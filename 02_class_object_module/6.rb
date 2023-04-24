=begin
Rubyは紛れもなくOOP
Rubyは継承階層をどのように組み立てるか

オブジェクトは変数の入れ物。変数はインスタンス変数と呼ばれオブジェクトの状態を表現する。
クラスはメソッドと定数の入れ物。メソッドはインスタンスメソッドと呼ばれ、
そのクラスのインスタンスとなっているすべてのオブジェクトのふるまいを表現する。

スーパークラスはクラス階層内の親クラスのことで、
クラスBがクラスAを継承する場合、AはBのスーパークラスと呼ぶ。
モジュールはある一点を除いてクラスとまったく同じである
特異クラスは継承階層に含まれている名前のない不可視のクラスを指す分かりやすい用語である
レシーバはメソッドが呼び出されるオブジェクトのこと
=end

class Person
    def name
        "田中"
    end
end

class Customer < Person
end

customer = Customer.new

puts customer.class # Customer

puts Customer.superclass # Person

puts customer.respond_to?(:name) # true

=begin
上記のときの継承階層は以下のようになる
BasicObject <- Object <- Person <- Customer
=end

module ThingsWithNames
    def name
        "吉田"
    end
end

class Person
    include(ThingsWithNames)
end

puts customer.class # Customer

puts Customer.superclass # Person

puts customer.respond_to?(:name) # true

=begin
上記のときの継承階層は以下のようになる
BasicObject <- Kernel <- Object <- ThingsWithNames <- Person <- Customer
=end
