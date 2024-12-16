# function that take stock array as agument
# loops through and array with item parameter, loops thought array one more time with element parameter 
# for innter iteration, let each element - item  (store the maximum number, store value of min day and max day)      
# keeps iterating, if newer iteration get a greater number => update maximum num, value of min day and max day 

# => done iterate => get the value of buy day and sell day store in 2 variable => converse to index postion on the array
# => return the array with idex of buy day and sell day

def stock_picker (array) 
    buy_value = 0
    sell_value = 0
    best_profit = -100
    start_index = 0

    array.each do |item|
      start_index += 1
      array.slice(start_index..).each do |element|
        if (element - item) > best_profit 
          buy_value = item
          sell_value = element
          best_profit = element - item 
        end
      end            
    end
    
    buy_day = array.index(buy_value)
    sell_day = array.index(sell_value)

    return [buy_day, sell_day]
end



p stock_picker([9, 7, 4, 2, 1])
# => [1,4]  # for a profit of $15 - $3 == $12