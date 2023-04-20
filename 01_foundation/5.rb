=begin
コードの構文を解析して意味を解釈するのはコンパイルのときであり、
意味を理解したコードを実行するのは実行時である
irb> "808".split /0/
warning: ambiguous first argument: put porentheses or even spaces

修正方法は簡単でカッコで囲めば良い
irb> "808".split(/0/)

構文解析時にコードについての警告を生成させたければ、インタプリタの警告フラグを有効にする必要がある
> ruby -w script.rb

実行時警告を無効にしなければならない場合には、
$VREBOSEグローバル変数に一時的にnilをセットする
nil、false以外を代入すると値はtrueにする
=end