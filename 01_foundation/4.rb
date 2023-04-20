# 注意: このプログラムは実行できません

=begin
定数がミュータブルなことに注意しよう
STDIN、ARGV、RUBY_VERSIONなど
freezeメソッドを使える
=end

module Defaults
    NETWORKS = ["172.16.0.1", "172.16.0.2"]
end

# 引数なしでpurge_unreachableメソッドを呼び出すと定数を書き換えてしまう
# NETWORKS = ["172.16.0.1", "172.16.0.2"].freeze
# freezeメソッドにすることでイミュータブルにできる
# こうしておくと書き換えられるタイミングで「RuntimeError」が出る
def purge_unreadable(networks=Defaults::NETWORKS)
    networks.delete_if do |net|
        !ping(net + ".1")
    end
end

def host_address(host, networks=Defaults::NETWORKS)
    networks.map { |net| net << ".#{host}"}
end

=begin
NETWORKS配列の要素もミュータブルにしてあげると、
host_address関数でも書き換えられることはなくなる
定数をfreezeすれば追跡しにくいバグを例外に変えることができる
=end
module Defaults
    NETWORKS = [
        "172.16.0.1",
        "172.16.0.2",
    ].map!(&:freeze).freeze
end