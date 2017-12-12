require 'forecast_io'
require 'typhoeus/adapters/faraday'

#ForecastIO.api_key = 'c6a865ed657ca5e1cd9ea5bf87019903'
ForecastIO.configure do |configuration|
	configuration.api_key = 'c6a865ed657ca5e1cd9ea5bf87019903'

forecast = ForecastIO.forecast(37.8267, -122.423)

puts forecast