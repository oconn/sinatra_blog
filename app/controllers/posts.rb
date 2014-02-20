get '/posts' do 
  @posts = Post.order("created_at DESC")
  p @posts
  erb :"post_views/index"
end

get '/posts/new' do
  @tags = Tag.all
  erb :"post_views/new"
end

get '/posts/:title' do
  @post = Post.where(title: params[:title]).first

  erb :"post_views/show"
end

get '/posts/edit/:id' do
  @post = Post.find(params[:id])

  erb :"post_views/edit"
end

get '/posts/delete/:id' do
  Post.find(params[:id]).destroy

  redirect to('/posts')
end

post '/posts/new' do
	@post = Post.new(title: params[:title], body: params[:body])

	if @post.save
		@post.tags << Tag.create(name: params[:tags])
		# params[:tags].each do |tag|

		# end
    redirect to('/posts')
	else
    @post.errors.messages.each do |param, error|
      p "##{param}: #{error}"
    end
		# redirect to('/posts/new')
	end
end

post '/posts/edit' do
	p params
  @post = Post.find(params[:id])
  @post.update_attributes(title: params[:title], body: params[:body])
  redirect to("/posts/#{@post.title}")
end

