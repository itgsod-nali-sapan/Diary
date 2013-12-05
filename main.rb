def interface
  puts "Welcome to your own awesome private diary"
  sleep 1
  puts "Do you want to read or write?"
  sleep 1
  puts "1. Write"
  sleep 1
  puts "2. Read"
  options
end

def options
  input = gets.to_i
  until input == 1 || input == 2
    puts"That's not right, try again"
    input = gets.to_i
  end
  write if input == 1
  read if input == 2
end

def write
  puts "Title:"
  input = gets.chomp
  file = create_file(input)
  puts "Start writing: (When done, write '/done' to save and exit"
  write_file(file)
end

def create_file(title)
  t = Time.now
  File.open("#{title}, #{t.strftime("%d-%m-%y")}.txt", 'w') do
  end
  return "#{title}.txt"
end

def write_file(file)
  File.open(file, 'w') do |wtxt|
    input = gets.chomp
    until input == "/done"
      wtxt.puts "#{input}"
      input = gets.chomp
    end
  end
end

def read

end

interface