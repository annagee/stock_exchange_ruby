class Brokerage

  attr_accessor :name, :address, :clients

  def initialize (options = {})
    @name = options[:name]
    @address = options[:address]
    @clients = {}
  end

  def creating_new_client
    @client.puts(client)
  end  

  def adding_stock_to_portfolio

  end


end   