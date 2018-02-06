class WrongNumberOfPlayersError < StandardError 
end 
class NoSuchStrategyError < StandardError 
end

def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2 
    play1 = game[0][1].downcase
    play2 = game[1][1].downcase
    raise NoSuchStrategyError unless play1 == 'r' or play1 == 'p' or play1 == 's'
    raise NoSuchStrategyError unless play2 == 'r' or play2 == 'p' or play2 == 's'
    if play1 == play2
        return game[0]# your code here
    elsif play1 == 'p' and play2 == 'r' 
        return game[0] 
    elsif play2 == 'p' and play1 == 'r' 
        return game[1] 
    elsif play2 > play1 # this works for all other combos but rock and paper since R>P but paper wins by rules of game 
        return game[1] 
    else 
        return game[0]
    
    end
    
# your code here
end

p rps_game_winner( [ [ "Armando", "P" ], [ "Dave", "P" ] ])
p rps_game_winner( [ [ "Liz", "P" ], [ "Dave", "R" ] ])

def rps_tournament_winner(tournament)
    winner=nil
    tournament.each do |round|
    raise WrongNumberOfPlayersError unless round.length == 2 
    play1 = round[0][1].downcase
    play2 = round[1][1].downcase
    raise NoSuchStrategyError unless play1 == 'r' or play1 == 'p' or play1 == 's'
    raise NoSuchStrategyError unless play2 == 'r' or play2 == 'p' or play2 == 's'
    if play1 == play2
        winner= round[0]# your code here
    elsif play1 == 'p' and play2 == 'r' 
        winner= round[0] 
    elsif play2 == 'p' and play1 == 'r' 
        winner= round[1] 
    elsif play2 > play1 # this works for all other combos but rock and paper since R>P but paper wins by rules of game 
        winner= round[1] 
    else 
        winner= round[0]
    
    end
    end
    p winner
end

 rps_tournament_winner([[ ["Allen", "S"], ["Omer", "P"] ],
   [ ["David E.", "R"], ["Richard X.", "P"] ]])