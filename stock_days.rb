puts "relax, you'll do fine"

def max_money (prices)
  buy_day = -1
  sell_day= -1
  max_cash = -1

  prices.count.times do |i|
    j = i
    while j < prices.count do 
      if((prices[j] - prices[i]) > max_cash)
        puts "*** buy: #{i}, sell: #{j}, gain: #{prices[j] - prices[i]}"
        max_cash = prices[j] - prices[i]
        buy_day = i
        sell_day = j
      end
      j += 1
    end
  end


result = [buy_day, sell_day]
end

p max_money([ 44, 30, 24, 32, 35, 30, 40, 38 ])