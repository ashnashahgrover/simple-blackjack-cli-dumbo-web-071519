def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
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
  card_total = deal_card 
  display_card_total(card_total)
  card_total = card_total + deal_card
  display_card_total = (card_total)
end

def hit?(card_total)
  prompt_user
  choice = get_user_input
  if choice == "h"
    card_total+=deal_card
  elsif choice == "s"
    nil
  else 
    invalid_command
    hit?(card_total)
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total < 21
    hit
    card_total += deal_card
  end
  end_game
end
    
