
require 'pry'
require_relative 'brokerage'
require_relative 'client'
require_relative 'portfolio'
require_relative 'stock'

brokerage = Brokerage.new({
  name: 'Larsson Brokerage', 
  address: '23 Finsbury Square, London, EC1'
  })
  
  portfolios = []

  # client1 = Client.new({
  #   name:'Suzy Brown',
  #   balance: 123000
  #   })
# client1 = Client.new({name: "Tony Brown", balance: 23000})

# adding clients to the brokerage
# brokerage.client(client1.name) = client1
# brokerage.client(client2.name) = client2 

def menu
  puts `clear`
  puts '*** GASE ***'
  puts '1 - Create a client'
  puts '2 - Create a portfolio'
  puts '3 - Purchase Stocks'
  puts '4 - Sell Stocks'
  puts '5 - List all clients and their balances'
  puts "6 - List a client's portfolios and associated values"
  puts "7 - List all stocks in a portfolio and associated values"
  puts 'q - Quit program'
  print "--> "
  gets.chomp.downcase
end

answer = menu 
 while answer != 'q'
  case answer
  when "1"
    puts "What is the client name?"
    name = gets.chomp
    puts "What is the client balance?"
    balance = gets.chomp.to_f

    # puts "What are the current portfolios the client owns?"
    # portfolio = gets.chomp
    # puts "What shares does the client own?"
    # num_of_stocks = gets.chomp

    # creating a new client
    client = Client.new({
      name: name, 
      balance: balance
      })
    # brokerage.client.push(client)    
    # adding client to brokerage
    brokerage.clients[client.name] = client
    puts "New client, #{client.name} with #{client.balance} has been added"
   
  when '2'   
    puts "What is the portfolio name?"
    portfolio_name = gets.chomp
    puts "What stocks are to be added?"
    stocks =  gets.chomp
    puts "How many stocks to add?"
    num_of_stocks = gets.chomp.to_i
    portfolio = Portfolio.new({
      portfolio_name: portfolio_name,
      stocks: stocks,
      })
   portfolios.push(portfolio)
    puts "#{portfolio.portfolio_name} has been created"

  when '3' 
    # puts "What is your name?"
    # gets.chomp
    puts "Which portfolio do you wish to buy shares for?"
    portfolio = gets.chomp
    puts "What stock would you like to purchase?"
    stock_name = gets.chomp
    # puts "Stock price is xxx. Please confirm how many shares you wish to buy."
    puts "How much stock would you like to purchase?"
    num_of_shares =gets.chomp.to_f
    stock = Stock.new ({stock_name: stock_name, num_of_shares: num_of_shares})
    brokerage.client.portfolio(stock.stock_name).to a

    puts "Confirming that you are happy to purchase #{stock_name.name} for #{num_of_share}?(y)es or (n)o"
    gets.chomp == y
  when '4' 
    puts "What is your name?"
    gets.chomp
    puts "Which portfolio do you wish to sell shares from?"
    gets.chomp
    puts "What stock would you like to sell?"
    gets.chomp
    puts "Stock price is xxx. Please confirm how many shares you wish to sell."
    gets.chomp

  when '5'
   puts "The following clients, have these balances"
   puts brokerage.display_clients
   puts "Enter any key to continue"
   gets

  when '6'
    puts 'Name of client'
    name = gets.chomp
    puts "The following is a list of client's portfolios and assiocated values"
    puts brokerage.dislay
    puts "Enter any key to continue"
   gets
  when '7'  
    puts "Name of portfolio"
    portfolio_name = gets.chomp
    puts "The following is a list of stocks and associated values in portfolio"
    puts "Enter any key to continue"
    gets
  end  

  answer = menu 

end 


binding.pry 