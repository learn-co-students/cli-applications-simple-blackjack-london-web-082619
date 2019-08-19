require 'pry'
def welcome
 puts "Welcome to the Blackjack Table"
 end

def deal_card
  p rand(1..11)
end

def display_card_total(total)
  puts  "Your cards add up to #{total}"
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 gets.chomp 
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = 0
  total += deal_card
  total += deal_card
  display_card_total(total)
 total
end

def hit?(cards_total)
  prompt_user
  user_input = get_user_input
 
  until user_input =="h" || user_input == "s"
  # binding.pry
  invalid_command
  prompt_user
  user_input = get_user_input
 end
 
  if user_input == "h"
     cards_total += deal_card
     elsif
     user_input == "s"
     cards_total
  end
  cards_total
  end

def invalid_command
  puts "Please enter a valid command"
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
# it "calls on the #welcome method, 
#   then on the #initial_round method, 
#   then calls #hit? and #display_card_total methods
#   -until- the card sum is greater than 21,
#   then calls on the #end_game method" do




def runner
 welcome
 total = initial_round
  until total > 21
  total = hit?(total)
  display_card_total(total)

end
end_game(total)
end
    
