require 'sinatra'

before do
  # content_type :txt
  @win = { paper: :rock, scissors: :paper, rock: :scissor }
  @throw = @win.keys
end

get '/' do
  
  erb :app
end
