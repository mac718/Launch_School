def buy_fruit(list)
  new_arr = []
  list.each do |item_and_quantity|
    item_and_quantity[1].times { new_arr << item_and_quantity[0] }
  end 
  new_arr
end