require 'yahoofinance'

class Stock
    attr_accessor :ticker_symbol, :shares
    def initialize(ticker_symbol, shares)
        @ticker_symbol = ticker_symbol
        @shares = shares
    end

    def stocks_value
        shares * YahooFinance::get_quotes(YahooFinance::StandardQuote, @ticker_symbol)[@ticker_symbol].lastTrade
    end
end


s1 = Stock.new("AAPL", 100)

puts s1.stocks_value