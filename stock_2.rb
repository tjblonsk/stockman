require 'yahoofinance'

class Stock
  attr_accessor :symbol, :shares
  def initialize(symbol, shares)
    @symbol = symbol
    @shares = shares
  end

  def total_value
    shares * YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
  end

end


# s1 = Stock.new("AAPL", 100)

# puts s1.total_value