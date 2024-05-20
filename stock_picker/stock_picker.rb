def stock_picker(price)
    day_best_execution = [] #Create an array that contains what day you should sell to make most money assuming you bought at day = index
    price.each_with_index do |close, index|
        temporary_max = []
        forward_closes = price[index..price.length]
        forward_closes.each do |sale_close|
            temporary_max.push(sale_close - close)
        end
        day_best_execution[index] = index + temporary_max.index(temporary_max.max)
    end
    max = 0
    result = []
    day_best_execution.each_with_index do |sell_day, buy_day|
       if price[sell_day] - price[buy_day] > max 
        max = price[sell_day] - price[buy_day] 
        result = [buy_day,sell_day]
       end
    end
    if max == 0 
        return "Can't make Money!"
    else
        return result
    end
end