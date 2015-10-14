# Level 1: Write code that'll output the names (and only the names) in order by ascending age
#   arr = data.sort {|a,b| a[1] <=> b[1]}
#   arr.collect {|ind| ind[0]}
# Level 2: Output the name with the age, like Juan (24)
# Level 3: If there are multiple people tied with the same age, put them in alphabetical order
# Level 4: Write code to automatically build a hash with the age as the key and an array of names as the value (all the people who are that age). e.g. {24 => ['Juan', 'Steve', 'Jill']...}
#

data = [
  ['Frank', 33],
  ['Stacy', 15],
  ['Juan', 24],
  ['Dom', 32],
  ['Steve', 24],
  ['Jill', 24]
]

# Level 1 #
age_sort = data.sort {|a,b| a[1] <=> b[1]}
puts age_sort.collect {|ind| ind[0]}

# Level 2#
age_sort.each do |a|
  puts "#{a[0]} (#{a[1]})"
end

# Level 3 #
p age_sort = data.sort_by {|a| [a[1], a[0]]}
# ALTERNATIVE
# age_sort.each do |a| # Question: possible to combine sort_by and each, ex: age_sort.each.sort_by
#   puts "#{a[0]} (#{a[1]})"
# end

# Level 4 #
age_hash = Hash[age_sort.map {|value,key| [value,key]}]
puts age_hash.values_at("Stacy")
