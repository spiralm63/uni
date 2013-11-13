get '/' do
  if current_user
    redirect '/profile'
  else
    redirect '/login'
  end
end

get '/login' do
  erb :login
end

post '/sessions' do
  user = User.find_by_email(params[:email])
  if user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    erb :login
  end
end

get '/logout' do
  # session[:user_id] = nil
  session.delete(:user_id)

  redirect '/'
end

get '/profile' do
  erb :profile
end