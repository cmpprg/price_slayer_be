# Install the 'httparty' gem if you haven't already
# gem install httparty

require 'httparty'

# Define your OpenAI API key
api_key = 'YOUR_OPENAI_API_KEY'

# API endpoint
url = 'https://api.openai.com/v1/engines/davinci-codex/completions'

# Function to send a prompt and get a response from ChatGPT
def get_chat_gpt_response(prompt, api_key)
  headers = {
    'Content-Type' => 'application/json',
    'Authorization' => "Bearer #{api_key}"
  }

  payload = {
    prompt: prompt,
    max_tokens: 150
  }

  response = HTTParty.post(url, headers: headers, body: payload.to_json)

  if response.success?
    return response['choices'][0]['text']
  else
    puts "Error: #{response['error']}"
    return nil
  end
end

# Example prompt
prompt = 'You: Who won the world series in 2020?\nChatGPT: The Los Angeles Dodgers won the World Series in 2020.'

# Get a response from ChatGPT
response = get_chat_gpt_response(prompt, api_key)

# Output the response
puts "ChatGPT: #{response}"