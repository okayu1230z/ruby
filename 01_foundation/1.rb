=begin
true, falseはキーワードではなくグローバル変数
Rubyではfalseとnil以外は全ての値が真となる
多くの言語とは異なり、Rubyでは0は真である
=end

puts true.class # TrueClass
puts false.class # FalseClass

=begin
falseとnilを区別しないといけないときは、nil?メソッドを使うかfalseは左被演算子とする==演算子を使おう
falseを左側に置くと、Rubyは式をFalseClass#==メソッド呼び出しと解釈する
右被演算子としてfalseを使うと他のクラスはObject#==メソッドをオーバライドして、
比較の基準を変えてしまう場合がある.
=end

class Bad
    def == (other)
        true
    end
end

puts false == Bad.new # false
puts Bad.new == false # true