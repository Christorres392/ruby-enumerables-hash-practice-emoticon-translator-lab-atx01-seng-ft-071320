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
english_meaning = ""
sorry_message = "Sorry, that emoticon was not found"
lib = load_library(file)
  lib.each do |key, value|
    value.each do |inner_key, inner_value|
      if inner_value == j_meaning
          english_meaning = key
        end
      end
      if english_meaning == ""
        english_meaning = sorry_message
      end
    end
    eng_meaning
