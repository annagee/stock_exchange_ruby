class Portfolio
  attr_accessor :portfolio_name, :stocks, :num_of_stocks

  def initialize
    @portfolio_name = options[:portfolio_name]
    @stocks = options[:stocks]
    @num_of_stocks = options[:num_of_stocks]
  end

end  