
array = [1, 0, -1, 2]

# index指定
puts array[2]
puts array.at(2)

# index 1から2の要素を取得する
puts array[1..2]

# index 1から2の要素を取得するが、最後は含まない
puts array[1...2]

# index 1から2つの要素を取得する
puts array[1,2]

# 最後の要素指定
puts array[-1]

# 最後に追加
array.push(3)

# 最初に追加
array.unshift(10, 20, 30)

# 位置を指定して追加
array.insert(1, 10, 20, 30)

# 最後から1要素削除する
array.pop

# 最初から1要素削除する
array.shift

# 位置を指定して削除
array.delete_at(3)

# 指定した要素の削除
array.delete(1)

# 条件に合った要素を抽出する
array.select{|a| a.odd?}

# 条件に合った要素を除外
array.reject{|a| a > 2}

# 条件に合った要素を削除
array.delete_if{|a| a < 0}

# 条件に合わない要素を削除
array.keep_if{|a| a > 1}
