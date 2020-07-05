# require modules here
require "yaml"
require "pry"

def load_library(file)
  # code goes here
emoticons = YAML.load(file)
return_hash = {"meaning" => {}, "emoticon"=> {}}
binding.pry
emoticons.each do |key, value|

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
