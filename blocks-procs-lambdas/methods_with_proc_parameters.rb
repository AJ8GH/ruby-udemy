def talk_about(name, &myproc)
  # whenever we give a proc as a param, it must be prefixed with an &
  puts "Let me tell you about #{name}."
  myproc.call(name)
end

good_things = Proc.new do |name|
  puts "#{name} is a genius!"
  puts "#{name} is a jolly good fellow!"
end

bad_things = Proc.new do |name|
  puts "#{name} is a dolt!"
  puts "I can't stand #{name}!"
end

talk_about("Adam", &good_things)

talk_about("Nik", &bad_things)

talk_about("Brock", &bad_things)
