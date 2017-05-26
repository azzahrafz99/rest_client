require 'rest-client'

response = RestClient.get 'http://www.bing.com/'

def get_input
  puts "What do you want to search?"
  input = gets.chomp
end

def parse_input(input)
  input = input
end

def get_output(input)
  response = RestClient.get "https://www.bing.com/search?q=#{input}"
end

def parse_output(output)
  puts "Body = #{output.body}"
end

def start_app
  input = parse_input(get_input)
  output = get_output(input)
  parse_output(output)
end

start_app
