# require modules here
require "yaml"
require "pry"

def load_library(file)
  # code goes here
emoticons = YAML.load_file(file)
return_hash = {"meaning" => {}, "emoticon"=> {}}
#binding.pry
emoticons.each do |key, value|
  return_hash["meaning"][value[1]] = key
  return_hash["emoticon"][value[0]] = value[1]
end
return_hash
end



def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
