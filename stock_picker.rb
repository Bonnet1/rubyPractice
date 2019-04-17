def stock_picker(prices_array)

    price_diff = 0
    count = 0
    days_array = []

    prices_array.each do|price1|
        count += 1
        prices_array.each do |price2|
            if count > prices_array.index(price2)
                next
            else
                if (price2 - price1) > price_diff
                    price_diff = (price2 - price1)
                    days_array = [prices_array.index(price1), prices_array.index(price2)]
                end
            end
        end
    end

    puts days_array
end

stock_picker([17,3,6,9,15,8,6,1,10])