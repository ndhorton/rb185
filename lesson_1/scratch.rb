require 'pg'

conn = PG.connect(dbname: 'ecommerce')
conn.exec('SELECT * FROM customers') do |result|
  result.each do |row|
    p row
  end
end
