require "csv"

CSV.foreach("sample.csv") do |row|
    # 行に対する処理
    p row
end