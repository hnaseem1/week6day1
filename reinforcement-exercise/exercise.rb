a = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

row_counter = 1
seat_counter = 1

a.each do |row|
  row.each do |seat|
    if !seat
      puts "Row #{row_counter} seat #{seat_counter} is free. Do you want to sit there? (y/n)"
      user_response = gets.chomp
      if user_response == 'y'
        puts "What is your name?: "
        user_name = gets.chomp
        a[row_counter - 1][seat_counter - 1] = user_name
      end
    end
    seat_counter += 1
  end
  seat_counter = 1
  row_counter += 1
end

puts a
