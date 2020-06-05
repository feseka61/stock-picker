def stock_picker(stock_prices)

  days = [] #creating empty array for the days to buy and sell
  buy_day = 0
  sell_day = 0
  max_profit = 0

  stock_prices.each_index do |i|

    buy_day = i
    
    ((buy_day + 1)...(stock_prices.length)).each do |j|

      sell_day = j 
      current_profit = stock_prices[sell_day] - stock_prices[buy_day]

      if current_profit > max_profit

        max_profit = current_profit
        days = [buy_day, sell_day]

      end

    end

  end

  return days

end

p stock_picker([17,3,6,9,15,8,6,1,10])