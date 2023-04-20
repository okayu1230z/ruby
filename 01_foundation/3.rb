=begin
Perl風機能を避けよう
グローバル変数は$から始まる
PerlのようなStringクラスの=~演算子は右被演算子にマッチした文字列内の位置を返す。マッチする部分がなければnilを返す
String#=~演算子によって作られる変数は特殊グローバル変数と呼ばれる
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
暗号めいたグローバル変数ではなく、長くて意味のわかる別名の方を使おう（$:ではなく、$LOAD_PATH）
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

=begin
グローバル変数$_を操作する
https://docs.ruby-lang.org/ja/latest/method/Kernel/v/_.html
gets() または readline() で最後に読み込んだ行
Regexp#~演算子は右側の正規表現に$_変数の内容をマッチさせようとする
ワンライナーでの使用が望ましい
=end

def eread (message)
    print if ~ /^ERROR:/
end

eread("ERROR: code 6000")