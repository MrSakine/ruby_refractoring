def save_post_to_file(post, path, mode)
    File.open(path, mode) do |file|
        file.puts(post)
    end
end

def read_post_from_file(path, mode)
    File.open("data.txt", "r") do |file|
        file.each_line do |line|
          puts line
        end
    end
end

def format_input(point, comment)
    return "Point: #{point} Comment: #{comment}"
end

def print_choices()
    puts
    puts "Choose what you want to do"
    puts
    puts "1 => Enter rating points and comments"
    puts "2 => Check results so far"
    puts "3 => Quit"
    puts
end

while true
    print_choices()
    num = gets.to_i
 
    case num
    when 1
      puts "Enter a rating from 1 to 5"
      point = gets.to_i
      while true
        if point <= 0 || point > 5
          puts "Please enter between 1 and 5"
          point = gets.to_i
        else
          puts "Please enter a comment"
          comment = gets
          post = format_input(point, comment)
        #   File.open("data.txt", "a") do |file|
        #     file.puts(post)
        #   end
          save_post_to_file(post, "data.txt", "a")
          break
        end
      end
    when 2
      puts "results so far"
    #   File.open("data.txt", "r") do |file|
    #     file.each_line do |line|
    #       puts line
    #     end
    #   end
      read_post_from_file("data.txt", "r")
    when 3
      puts "Good bye!"
      break
    else
      puts "Please enter 1 to 3"
    end
end