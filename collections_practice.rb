# your code goes here
def begins_with_r(array)
	all_r_words = []
	array.collect do |word| 
		all_r_words << word if word[0] == 'r'
	end
	if all_r_words.length == array.length
		return true
	else 
		return false
	end
end

def contain_a(array)
	array.select {|word| word.include?('a')}
end

def first_wa(array)
	matches = array.delete_if { |word| word.class != String || !word.start_with?('wa') } 
	matches[0]
end

def remove_non_strings(array)
	array.delete_if {|word| word.class != String}
end

def count_elements(array)
	array.each {|k, v| puts k, v} 
end