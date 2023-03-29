=begin
Rubyプログラムに含まれるすべてのオブジェクトは、BasicObjectクラスを継承するクラスから作られる
あるクラスのオブジェクトを別のクラスのオブジェクトに置き換えられる
Rubyプログラマはこの性質のことをダックタイピング（つまり動的型付け）と呼ぶ
つまり、すべてのオブジェクトがnilになり得る
nil?メソッドを使うことでNoMethodErrorを防げる
=end

class Person
    def save()
        puts "Personが保存されました。"
    end
end

person = Person.new
person.save if !person.nil? # Personが保存されました。

=begin
適切ならto_s、to_iなどの変換メソッドを使ってnilオブジェクトを強制的に型変換する
NillClass#to_sは空文字を返す
=end

puts 13.to_s # 13
puts nil.to_s # ""
puts nil.to_i # 0
puts nil.to_f # 0.0
puts nil.to_a # []

=begin
Array#compactメソッドはレシーバのコピーからすべてのnil要素を取り除いた形のものを返す
=end

first, middle, last = "first", nil, "last"
name = [first, middle, last].compact.join(" ")
puts name # first last