class String
  def rot factor = 13
    key_ary = (("a".."z").to_a)*2

    encrypted_str = ""
    self.each_char do |char|
      if key_ary.include?(char)
        origin = key_ary.index(char)
        char = key_ary[origin + factor]
        puts char
      end
      encrypted_str = encrypted_str + char
    end
    encrypted_str
  end
end

puts "max is cool".rot
