# require'stock_quote'
# require 'eu_central_bank'

# def exchange(from,to,amount)

# 	amount = amount.to_i if amount.is_a? String
# 	bank = EuCentralBank.new
# 	bank.update_rates

# 	amount * bank.exchange(100, from, to)
# end

# ARGV.each do |company|
# stock = StockQuote::Stock.quote(compnay)
# puts "#{stock.name}의 가격은 $ #{stock.l} / #{exchange('USD','KRW', stock.l)} 원 입니다."

# end

require 'stock_quote'
require 'eu_central_bank'


def exchange(stock, from, to)
   
   stock = stock.to_i if stock.is_a?(String)  # stock.l 을 string으로 받아옴

#   if stock.is_a?(String)
#      stock = stock.to_i  # stock.l 을 string으로 받아옴
#   end
   bank = EuCentralBank.new
   
   bank.update_rates   # Data를 update를 시켜줌
   
   return stock * bank.exchange( 100, from, to)

   #return stock.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
end

ARGV.each do |com_nam|
   stock = StockQuote::Stock.quote(com_nam)

   puts "#{stock.name} => $#{stock.l} / #{exchange  stock.l, 'USD' ,'KRW' }원"
end


