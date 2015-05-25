class Portfolio

  attr_accessor :portfolio_name, :stocks, :num_of_stocks

  def initialize (options = {})
    @portfolio_name = options[:portfolio_name]
    @stock_name = options[:stock_name]
    @num_of_stocks = {}
  end

end  