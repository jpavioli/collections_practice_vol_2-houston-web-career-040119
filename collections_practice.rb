# your code goes here
require 'pry'

def begins_with_r(arr)
  #returns  True/False if every element within array start with r
  arr.all? {|word| word[0] == "r"}
end

def contain_a(arr)
  #return all elements that contain the letter a
  arr.select{|word| word.include?("a")}
end

def first_wa(arr)
  #return the first element that begins with the letters "wa"
  arr.find {|word| word[0..1] == "wa"}
end

def remove_non_strings(arr)
  #remove anything that's not a string from the array
  arr.select {|element| element.class == String}
end

def count_elements(arr)
  #count how many times something appears in an array
  arr.uniq.map {|x| {:count => arr.count(x), :name => x[:name]} }
end

def merge_data(keys,data)
  #merge two nested data structures into one
  data[0].values.map.with_index {|v, i| keys[i].merge(v)}
end

def find_cool(arr)
  #find all cool hashses
  arr.select {|hash| hash[:temperature] == "cool"}
end

def organize_schools(hash)
  #organizes schools by location
  hash.each_with_object({}) do |(name, data), res|
    (res[data[:location]] ||= []) << name
  end
end
