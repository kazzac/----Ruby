# encoding: utf-8
# ↑日本語を使えるようにするための記述

print "Hello World","world" #普通に表示
puts "Hello World,again","world" #改行付きで表示
p "Hello World3","world" #オブジェクト型が分かるように表示

=begin

変数のルール
・英小文字か＿で始まる
・予約語（コマンド）はダメ

定数のルール
・全部大文字
・途中で変更しちゃダメ

=end

# オブジェクト指向型言語で使われる用語

# オブジェクト：便利な命令が詰まったデータ型
# メソッド：便利な命令

p "hello".length

# ここでは "hello" がオブジェクトで
# .length がメソッド

p "hello".upcase # 大文字に変換
p "hello".reverse # 逆順に並べ替え
p "hello".index("o") # "o"は何文字目か？
p "hello".include?("w") # "w"は含まれているか？

# 破壊的メソッドは"!"が付いていて
# 元のオブジェクトまで変更してしまう

s = "crash"
s1 = s.upcase!

p s
p s1

# クラス：設計図
# インスタンス：実体化されたデータ

# String　：クラス
# "hello"：インスタンス

x = "hello" # 変数や特殊文字を展開する
y = 'hello' # 展開しない

# 特殊文字 \n：改行 \t：tab

puts "hello\nworld"

puts 'hello\nworld'

name = "Kazunari"

puts "My name is #{name}."

puts "こんにちは"

# 数値的オブジェクトの演算とメソッド

x = Rational(2, 3) + Rational(5, 6)

puts x

x = 5 ** 2

puts x

p Math.sqrt(2) #平方根を求める

p 10.8.round # 四捨五入する

p 10.5.to_i # 整数にする（少数転以下切り捨て）

p 10.5.to_r # 分数にする

# 配列オブジェクト

names = ["Taro","Jiro","Saburo"]

p names
p names[1] # 1番目のオブジェクトを取り出す（ゼロからカウント）
p names[1..2] # 1番目から2番目までを取り出す
p names[0...2] # 0番目から2番目未満までを取り出す
p names[-1] # 後ろから1番目を取り出す（-1からカウント）

names[0] = "Taro2" # 0番目を置き換える
p names

names[0..1] = ["Taro3","Jiro2"] # 0番目から1番目までを置き換える
p names

names[1,2] = ["a","b"] # 1番目から2つのオブジェクトを置き換える
p names

names[1,0] = ["c","d"] # 1番目にオブジェクトを追加する
p names

a = [1,2,3,4]
b = [3,4,5,6]

p a & b # 共通部分を出す
p a | b # 重複をさけてすべての要素を出す
p a - b # aからbを引く（aのうち、bと重複しない部分のみを出す）
p a + b # 単純に結合する

c = [1,5,3,4,5,4,8]

p c.uniq # 重複を取り除く
p c.sort # 並べ替える

p c.unshift(0) # 0を先頭に追加
p c.push(10) # 10を末尾に追加

c.shift # 先頭のオブジェクトを削除 
p c

c.pop # 末尾のオブジェクトを削除
p c

# ハッシュオブジェクト（連想配列）
# 配列の各オブジェクトにキーを付けて扱いやすくする

sales = {"Taro"=>100,"Jiro"=>150,"Saburo"=>200}
p sales
p sales["Jiro"]

p sales.size # オブジェクトの数を返す
p sales.empty? # オブジェクトの有無を返す
p sales.has_key?("Taro") # 指定キーの有無を返す
p sales.has_value?(200) # 指定値の有無を返す

# 日付と時間

t = Time.now
p t
p t.year # .month .day も指定できる
p t.hour # .min .sec も指定できる

t = Time.mktime(2013,12,14,12,0,0)
        # 年月日時分秒を指定してオブジェクトを作成
p t

t = t + 65 # 秒単位で足し算できる
p t

p t.strftime("%Y/%m/%d") # 表示形式を指定する

# 文字列をフォーマットに沿って出力する（printf,sprintf）

x = "Taro"
y = 25

printf("%s's score is %d.\n",x,y)
        # %sは文字列、%dは整数。記述順にx,yの値を代入

printf("%10s's score is %8d.\n",x,y) # 表示桁数を指定できる

z = sprintf("%-10s's score is %08d.\n",x,y)
        # sprintfでオブジェクトを生成できる。
puts z

# 条件分岐〜if文〜

score = rand(101) # rand(101)は0から101未満の整数乱数を生成
p score

if score >= 80
    puts "Great!"
elsif score >= 60
    puts "So so..."
else
    puts "Not so great"
end

# 他の書き方

puts "Great!" if score >= 80
puts "So so..." if score < 80 && score >= 60
puts "Not so great" if score < 60

a = rand(100)
b = rand(100)

puts "aは#{a}です"
puts "bは#{b}です"

max = a>b ? a : b
    # 「条件 ? 値1 : 値2」で、条件成立なら値1、不成立なら値2を返す

puts "最大値は#{max}です"

# 比較演算子

    # < > <= >= ：不等号
    # == ：等号 ＊ = だけでは、変数などに値をセットする意味になる
    # != ：not equal
    # =~ ：文字列と正規表現とのマッチングを調べる

puts "match!" if /Taro/ =~ "My name is Taro."

    # /Taro/ は Taroを含む文字列を表す正規表現

    # 比較式は&&（AND）や ||（OR）で複数の組み合わせも可能

x = 3
if x >= 1 && x <= 10
  puts "xは1以上10以下の数値である"  
end

# 条件分岐〜case文〜

signals = ["red","green","blue","yellow","purple","black"]
signal = signals.sample
    
    # 配列名.sample で、配列の要素のうちひとつをランダムに返す

print "The signal is #{signal}, so...."

case signal
    when "red"
        puts "Stop!"
    when "yellow"
        puts "Caution!"
    when "green","blue" # コンマで区切れば、複数条件も指定可能
        puts "Go!"
    else
        puts "Signal is broken!!!"
end


# 繰り返し処理〜timesメソッド〜

4.times do
    puts "hi!"
end

4.times do |i| # iは繰り返しの回数を示す変数（ゼロスタート）
    puts "#{i} hi!"
end


# 繰り返し処理 〜for / each〜

signals = ["red","green","blue","yellow","purple","black"]

for signal in signals do
    # signalという変数にsignals配列からひとつずつ値を代入
    puts signal
end

signals.each do |signal| # 上のforと同じ働き
    puts signal
end
    
for i in 1 .. 3 do
    puts i
end


# ハッシュオブジェクトと繰り返し処理

scores = {"Taro"=>100,"Jiro"=>150,"Saburo"=>200}

scores.each do |name,score|
    printf("%s's score is %d\n", name, score)
end

    
# 繰り返し処理 〜while（自己代入）〜
    
i = 1

while i < 4 do
    puts i
    i += 1
    # i = i +1 と同じ（自己演算子） *=, /= , -= も使える
end    

# メソッドを定義する
# メソッド名には英字、数字、アンダーバーが使える
# ただし、数字から始まる名前はだめ

def sing(word = "la") # ()内は引数設定、初期値が"la"
    puts word + word + word + "~"
end
    
sing() # 定義したメソッドを呼び出す
sing("hu") # 定義したメソッドに引数を入力して呼び出す
    
def sing_times(word = "la",num) # 引数は複数設定可
    s = ""
    for i in 1..num do
        s += word
    end
    s += "~"
    return s # 返り値（実行結果）を設定
end
    
res = sing_times("hu",4) # 変数resにメソッドの返り値を格納

puts res

# クラスを作る
# @がついた変数は「インスタンス変数」と言って、
# 同一インスタンス内では共通して使える変数になる

    
class Monster
    
    def initialize(name)
        @name = name
        @hp = 100 + rand(100)
        printf("%s appeared.  His hp is %d\n", @name, @hp)

    end
    
    def damage
        @hp -= 10 + rand(10)
        printf("%s's hp is now %d\n", @name, @hp)
        printf("%s's is now dead!\n", @name, ) if @hp < 0
    end
    
    def heal
        @hp += 10 + rand(10)
        printf("%s's hp is now %d\n", @name, @hp)
    end

end
    
# クラスからインスタンスを作る
    
slime = Monster.new("スライムちゃん")
# モンスタークラスのインスタンスslimeを新規に作成
    
slime.damage
slime.damage