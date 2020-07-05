# require modules here
require "yaml"
require "pry"

def load_library(file)
  # code goes here
emoticons = YAML.load_file(file)
return_hash = {"meaning" => {}, "emoticons"=> {}}
#binding.pry
emoticons.each do |means, emot|
  return_hash["emoticons"][emot[0]] = emoticons[means][1]
  return_hash["meaning"][emot[1]] = means
  #binding.pry
end
return_hash
end



def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
