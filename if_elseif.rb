a = ARGV[0].to_i
b = ARGV[1].to_i

print "a=",a,",b=",b,"\n"

if a > b
    puts "aはbよりも大きい"
elsif a < b
    puts "aはbよりも小さい"
else
    puts "aとbは等しい"
end