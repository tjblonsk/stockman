require_relative 'stock_2.rb'

class Client
  attr_accessor :name, :balance, :portfolio
  def initialize(name, balance)
    @name = name
    @balance = balance
    @portfolio = {}
  end

  def individual_portfolios_total_value
    sum = 0
    portfolio.each {|port, stock| sum += stock.each}
  end

  def all_portfolios_total_value
    portfolio_total = 0
    @portfolio.each do |key, value|
    portfolio_total += value.individual_portfolios_total_value
  end
    return portfolio_total
  end
end

p1 = Client.new("Tim", 10000)

s1 = Stock.new("AAPL", 100)
s2 = Stock.new("IBM", 100)

s3 = Stock.new("GS", 50)

p1.portfolio[:tech] = [s1.total_value, s2.total_value]
#p1.portfolio[:finance] = s3

puts p1.all_portfolios_total_value


