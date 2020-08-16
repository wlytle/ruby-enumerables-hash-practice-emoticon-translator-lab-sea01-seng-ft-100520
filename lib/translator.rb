# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  translator = emoticons.each_with_object({}) do |key, dictionary|
        dictionary[key[0].to_sym] = {english: "", japanese: ""}
        dictionary[key[0].to_sym][:english] = key[1][0]
        dictionary[key[0].to_sym][:japanese] = key[1][1]
    end
    binding.pry
    translator
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end