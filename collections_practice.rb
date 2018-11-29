def begins_with_r(arr)
  arr.each do |word|
    return false if !word.start_with?("r")
  end
  true 
end

def contain_a(arr)
  arr.select do |word|
    word.include? ?a 
  end
end

def first_wa(arr)
  arr.each do |word|
    return word if word.to_s.start_with?('wa')
  end
end

def remove_non_strings(arr)
  arr.each do |word|
    arr.delete_if { |word| word.class != String }
  end
end

def count_elements(arr)
  rarr = []
  uniqarr = arr.uniq 
  uniqarr.each do |key1, name1|
    count = 0
    puts name1
    arr.each do |key2, name2|
      puts name2
      count += 1 if name1 == name2  
    end
    rarr << { :count => count, :name => name1 }
  end
  rarr
end
