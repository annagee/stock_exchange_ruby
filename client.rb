class Client
  def initialize (options ={})
    @name = options[:name]
    @balance = option[:balance]
    @portfolio = options[:portfolio] || {}
  end

end    