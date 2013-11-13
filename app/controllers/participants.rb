get '/participants/new' do
  @courses = Course.all - current_user.taken_courses
  # @courses = Course.where("id NOT IN (?)", current_user.taken_courses_ids)
  erb :participants_new
end

post '/participants' do
  course = Course.find_by_id(params[:course_id])
  current_user.taken_courses << course

  redirect '/profile'
end