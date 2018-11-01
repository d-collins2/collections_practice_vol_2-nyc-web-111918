# your code goes here
require "pry"
def begins_with_r(array)
  array.all?{|el| el[0] == "r"}
end 

def contain_a(array)
  array.select{|el| el.include?("a")}
end 

def first_wa (array)
  array.each{|el| return el if el[0..1] == "wa"}
end 

def remove_non_strings(array)
  array.select{|el| el.is_a?(String)}
end 

def count_elements(elements)
  uniq = elements.uniq 
  array = []
  
  uniq.each do |el|
    count = 0  
    elements.each do |name|
      if el == name 
        count += 1
      end 
    end 
    hash = el 
    hash[:count] = count 
    array << hash 
  end 
  array
end 

def merge_data(keys, data)
  array = []
  data.each do |key, value| 
    key.each do |name, name_data| 
      keys.each do |k, v|
        if k.values == [name] 
          array << name_data.merge(k)
        end 
      end 
    end 
  end 
  array 
end 

def find_cool(cool)
  cool.select {|name_hash| name_hash[:temperature] == "cool"}
end 

def organize_schools(schools)
  hash = {}
  schools.each do |name, location|
    location.each do |key, value|
      hash[value] = []
    end 
  end 
  
  hash.each do |location, array|
    schools.each do |name, location_hash|
      if location = location_hash[:location]
        array << name 
      end 
       binding.pry 
    end 
    binding.pry 
  end 
  
end 

