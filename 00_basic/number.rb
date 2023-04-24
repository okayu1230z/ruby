# 整数の割り算
puts 100/3 # 33

# 結果をfloatで表示
puts 100/3.to_f # 33.333333333333336

# 小数点2桁まで表示
puts sprintf("%.2f", 100/3.to_f) # 33.33

# 四捨五入
puts 1.4.round # 1
puts 1.444.round(2) # 1.44
puts 1.555.round(2) # 1.56

# 切り上げ
puts 1.4.ceil # 2
puts 1.444.ceil(2) # 1.45

# 切り捨て
puts 1.5.floor # 1
puts 1.555.floor(2) # 1.55