class Stock

  attr_accessor :num_of_shares, :stock_name, :share_price
  
   def initialize
    @num_of_shares = options[:num_of_shares]
    @stock_name = options[:stock_name]
    @share_price = options[:share_price]
   end 


end  