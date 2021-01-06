def military(t)
  h = t.chars[0,2].join.to_i
  m = t.chars[2,2].join.to_i
  if h > 12
  "#{"%02d" % (h - 12)}:#{"%02d" % m} pm"
  else
  "#{"%02d" % h}:#{"%02d" % m} am"
end
end

puts military('1630')
puts military('1230')
puts military('2215')
puts military('1700')
puts military('0930')
puts military('1107')
puts military('0012')
