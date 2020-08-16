# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  translator = emoticons.each_with_object({}) do |key, dictionary|
        dictionary[key[0]] = {english: "", japanese: ""}
        dictionary[key[0]][:english] = key[1][0]
        dictionary[key[0]][:japanese] = key[1][1]
    end
    translator
end

def get_japanese_emoticon(file_path, emoticon)
  translator = load_library(file_path)
  translator.each do |i|
    binding.pry
  end
end

def get_english_meaning(file_path, emoticon)
  translator = load_library(file_path)
  translator.each do |entry|
    binding.pry
    if emoticon === entry[0][:japanese]
      return entry[0]
    end
  end
end