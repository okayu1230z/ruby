=begin
Perl風機能を避けよう
グローバル変数は$から始まる
PerlのようなStringクラスの=~演算子は右被演算子にマッチした文字列内の位置を返す。マッチする部分がなければnilを返す
~=演算子によって作られる変数は特殊グローバル変数と呼ばれる
=end

def extract_error (message)
    if message =~ /^ERROR:\s+(.+)$/
        $1
    else
        "no error"
    end
end

puts extract_error("ERROR: code 15000")

=begin
String#matchを使う方がはるかにRubyらしい
特殊グローバル変数も使わなくて済む
=end

def extract_warn (message)
    if m = message.match(/^WARN:\s+(.+)$/)
        m[1]
    else
        "no error"
    end
end

puts extract_warn("WARN: code 12100")