require 'httparty'
require 'nokogiri'

url = 'http://finance.naver.com/sise/'
response = HTTParty.get(url)
text = Nokogiri::HTML(response.body)
#puts response
kospi = text.css('#KOSPI_now')
puts kospi.text

kosdaq = text.css('#KOSDAQ_now')
puts kosdaq.text

kpi200 = text.css('#KPI200_now')
puts kpi200.text