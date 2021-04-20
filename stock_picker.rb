def stock_picker(array)
    best_days = []
    profit = 0

    array.each_with_index do |buy_price, buy_day|
        array.each_with_index do |sell_price, sell_day|

            if sell_day >= buy_day && (sell_price - buy_price) > profit
              profit = sell_price - buy_price
              best_days = [buy_day, sell_day]
            end
        end
    end
    best_days
end

stock_picker([17,3,6,9,15,8,6,1,10])
