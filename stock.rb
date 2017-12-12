#gem install stock_quote

require'stock_quote'

#companies = ['appl', 'tsla', 'msft', 'fb', 'googl']
DATA.each do |company|
	company.chomp!

#companied를 돌면서, 요소별로 
	stock = StockQuote::Stock.quote(company)

	puts "#{stock.name} 의 가격은 $ #{stock.l}"
#	puts stock.l

end

__END__
appl
tsla
msft
fb
googl
a
b
c
d