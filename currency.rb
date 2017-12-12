require 'eu_central_bank'

#from = 'USD'
#to = 'KRW'

def exchange(from,to)
	bank = EuCentralBank.new
	bank.update_rates

	bank.exchange(100, from, to)
end

#result = bank.exchange(100, from, to)

puts "$1 => #{exchange 'USD', 'KRW'}원"