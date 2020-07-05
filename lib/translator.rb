# require modules here
require "yaml"
require "pry"

def load_library(file)
  # code goes here
emoticons_file = YAML.load(file)
new_hash = {}

emoticons_file.each  do |key, value|
  new_hash[key] = {}
  new_hash[key][:english] = value[0]
  new_hash[key][:japanese] = value[1]
end

#binding.pry

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
