def display_board(board)
  puts " " + board[0] + " | " + board[1] + " | " + board[2] + " "
  puts "-----------"
  puts " " + board[3] + " | " + board[4] + " | " + board[5] + " "
  puts "-----------"
  puts " " + board[6] + " | " + board[7] + " | " + board[8] + " "
end

def position_taken(board, index)
    if((board[index] == "" || board[index] == nil || board[index] == " ") && index > -1)
      return false
    else
      return true
    end
end

def valid_move?(board, index)
  if(position_taken(board, index) == false && index < 10)
    # puts "true"
    return true
  else
    # puts "false"
    return false
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(array, index, char)
  array[index] = char
end


def turn(board)
  
  puts "Please enter 1-9:"
  input = gets.strip
  
  if((input_to_index(input) > -1 && input_to_index(input) < 10) && valid_move?(board, input_to_index(input)) == true)
    move(board, input_to_index(input), "X")
    display_board(board)
  else
    puts "Please enter 1-9:"
    input = gets.strip
    turn(board)
  end
  
end

