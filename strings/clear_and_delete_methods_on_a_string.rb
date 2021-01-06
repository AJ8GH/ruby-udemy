# clear
word = 'Goodbye'
p word
word.clear
# p word  mutates original string

# delete
string = 'Hello World'
p string
p string.delete('l') # deletes every occurance of every letter specified
p string # does not mutate
p string.delete('eWrl')
p string
string.delete!('lo')
p string # bang delete mutates original

# custom method
def custom_delete(string, dels)
  new = ''
  string.each_char { |c| new << c unless dels.include?(c)}
  new
end

p custom_delete("Hello World", 'HW ')
