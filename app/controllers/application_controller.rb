class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #Github trial
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/users' do
    users = User.all
    users.to_json
  end

  get '/messages' do
    messages = Message.all
    messages.to_json
  end

  post "/messages" do
    message = Message.create(body: params[:body], owner: params[:owner], sent_at: params[:sent_at])
    message.to_json
  end

end
