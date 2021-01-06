class Hash
  def indentify_duplicate_values
    values = []
    dupes = []
    self.each_value { |value| values.include?(value) ? dupes << value : values << value }
    dupes.uniq
  end
end

scores = {a: 100, b: 100, c: 83, d: 50, e: 13,
          f: 6, g: 100, h: 13, i: 50, j: 80}

p scores.indentify_duplicate_values



class Integer
  def seconds
    self # just returns the number
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end

end

p Time.now
p Time.now + 45
p Time.now + 45.minutes
p Time.now + 4.hours
p Time.now + 4.days

class Integer

  def custom_times
    i = 0
    while i < self
      yield(i + 1) # 1, 2, 3, 4, 5
      i += 1
    end
  end

end

5.times { |i| p i } # original times method
5.custom_times { |i| p i } # our new custom times method
