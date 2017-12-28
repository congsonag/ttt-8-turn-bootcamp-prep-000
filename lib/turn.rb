def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(str)
  str.chomp.to_i - 1
end

def position_taken?(board, position)
  ['X', 'O'].include?(board[position])
end

def valid_move?(board, input)
  index = gets.chomp.to_i - 1
  index.between?(0,8) && !position_taken?(board, index)
end

def move(board, index, token='X')
  board[index] = token
end

def turn(board)
  puts 'Please enter 1-9:'
  input = gets.chomp
  if valid_move?(board,input)
    move(board, input_to_index(input))
    display_board(board)
  else
    turn(board)
  end

end
