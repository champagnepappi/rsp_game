require 'sinatra'

before do
  # content_type :txt
  @win = { paper: :rock, scissors: :paper, rock: :scissor }
  @throw = @win.keys
end

get '/' do
  erb :app
end

post '/' do
 @computer_choice = @throw.sample
 @player_choice1 = params[:rock]
@player_choice2 = params[:paper]
 @player_choice3 = params[:scissors]
 redirect '/'
end
