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
emoticon = YAML.load_file(file)
  emot_hash = {}
  emoticon.each do |key, value|
    emot_hash[key] = {}
    emot_hash[key][:english] = value[0]
    emot_hash[key][:japanese] = value[1]

  end
emot_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning (file, j_meaning)
  # code goes here
#binding.pry
lib = load_library(file)
#binding.pry
  lib.each do |key, value|
    #binding.pry
    if lib[key][:japanese] == j_meaning
      return key
    #binding.pry
    else
    "No emoticon found"
    end
  end
end
