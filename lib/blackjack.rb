def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(player_card_total)
    puts "Sorry, you hit #{player_card_total}. Thanks for playing!"
end

def initial_round
  first_deal = deal_card + deal_card
  display_card_total(first_deal)
  first_deal
end

def hit?(player_card_total)
  prompt_user
  user_input = get_user_input
  while true do
    if user_input == 'h'
      return player_card_total += deal_card
      break
    elsif user_input == 's'
      return player_card_total
      break
    else
      invalid_command
      prompt_user
      user_input = get_user_input
    end
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  player_total = initial_round
  while player_total <= 21 do
    player_total = hit?(player_total)
    display_card_total(player_total)
  end
  end_game(player_total)
end
    
