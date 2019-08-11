require "pry"
def welcome
  
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # generate random number between 1 to 11
  return rand 1..11
end

def display_card_total(total)
  
  puts "Your cards add up to #{total}"
end

def prompt_user
  
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first = deal_card
  second = deal_card
  total = first + second
  display_card_total(total)
  
  return total 
  
end

def hit? (current_num_cards)
  
  prompt_user
 
  input = get_user_input
  if input == 's' 
    total = current_num_cards 
    
  elsif input == 'h'
    total = current_num_cards + deal_card
    
  else 
  
    invalid_command
    hit?(current_num_cards)
  end
  return total
end

def invalid_command
  
  puts "Please enter a valid command"
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  
  
     welcome
     
    
    total_card = initial_round
    until total_card > 21
    total_card = hit?(total_card)
    display_card_total(total_card)
  end
    end_game(total_card) 
  
end