require 'stock'

class Portfolio
  attr_accessor :stocks
  def initialize
    @stocks = []
  end

  def portfolio_value
    total_value = 0
    @stocks.each do |stock|
      total_value += stock.stocks_value
    end
    return total_value
  end
end


