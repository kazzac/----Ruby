def myloop
    while true
        yield   #ブロックを実行する
    end
end

num = 1
myloop do
    puts "num is #{num}"
    break if num > 100
    num *= 2
end