class Stock
  attr_accessor :num_of_shares, :share_price


   def initialize (options ={})
    @stock_name = options[:stock_name]
    @num_of_shares = options[:num_of_shares]
    @share_price = options[:share_price]
   end 


end  