# require modules here
require "yaml"
require "pry"

=begin
def load_library(file)
  # code goes here
emoticons = YAML.load_file(file)
return_hash = {"get_meaning" => {}, "get_emoticons" => {}}
#binding.pry
emoticons.each do |key, value|
  return_hash["get_emoticons"][value[0]] = emoticons[key][1]
  return_hash["get_meaning"][value[1]] = key
  #binding.pry
end
return_hash
end
=end
def load_library(file)
  hash = {}

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
