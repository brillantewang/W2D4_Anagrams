def first_anagram?(string1, string2)
  string1_bananagrams = string1.chars.permutation.to_a
  string1_bananagrams.each do |i|
    return true if i.join == string2
  end
  false
end

# p first_anagram?('elvis', 'lives')
# p first_anagram?("gizmo", "sally") # O(n!)

def second_anagram(str1, str2)
  str1_chars = str1.chars
  str2_chars = str2.chars

  str1.length.times do |i|
    if str2.include?(str1[i])
      str1_chars.each_with_index do |ch, j|
        if ch == str1[i]
          str1_chars.delete_at(j)
        end
      end
      str2_chars.each_with_index do |ch, j|
        if ch == str1[i]
          str2_chars.delete_at(j)
        end
      end
    end
  end

  str1_chars.empty? && str2_chars.empty?
end

#n^2

p second_anagram('elvis', 'lives')

def third_anagram(str1, str2)
  str1.chars.sort == str2.chars.sort
end
# O(nlog(n))

p third_anagram('elvis', 'lives')

def fourth_anagram(str1, str2)
  str1_hash = Hash.new(0)
  str1.chars.each do |i|
    str1_hash[i] += 1
  end

  str2_hash = Hash.new(0)
  str2.chars.each do |i|
    str2_hash[i] += 1
  end
  str1_hash == str2_hash
end

p fourth_anagram('elvis', 'lives')

#NNNN
