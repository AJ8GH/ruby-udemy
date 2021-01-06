# hash or hash maps (sometimes known as dictionaries, maps or associative arrays in other languages)
# is a data structure that stores key-value pairs
# hash object connects unique identifiers (keys) to values.
# dictionary is a very intuitive name for a hash - it works just like a dictionary
# word is like the key, definition is like the value
# each key is unique
# however the value can be duplicated
# ruby looks up the value in the hash by using the key, much like we use a dictionary by searching by word
#
# keys and values can be objects of any type
# keys must be unique but values can contain duplicates
# hashes are unordered - never use a hash to keep track of items by order or by sequence


empty_hash = {}
p empty_hash
p empty_hash.class
