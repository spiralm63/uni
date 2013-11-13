get '/courses/new' do
  erb :courses_new
end

post '/courses' do
  # current_user.taught_courses.create({
  #   title: params[:course][:title],
  #   description: params[:course][:description]
  # })

  current_user.taught_courses.create(params[:course])

  redirect '/profile'
end


get '/courses/:id' do
  @course = Course.find(params[:id])

  erb :courses_show
end

get '/courses/:id/edit' do
  @course = Course.find(params[:id])

  erb :courses_edit
end

put '/courses/:id' do
  @course = Course.find(params[:id])
  @course.update_attributes(params[:course])

  redirect '/profile'
end

delete '/courses/:id' do
  @course = Course.find(params[:id])
  @course.destroy

  redirect '/profile'
end