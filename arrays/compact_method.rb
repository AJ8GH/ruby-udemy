# removes all nil values from an array if there are any (does not remove any false values)

p [1, nil, 2, 3, nil, false, false, 4].compact
p [nil].compact
# compact does not mutate. compact! (bang method) does

sports = ['Baseball', nil, 'Football', nil, nil, 'Tennis']

def custom_compact(array)
  array.reject { |x| x == nil }
end

p custom_compact(sports)
