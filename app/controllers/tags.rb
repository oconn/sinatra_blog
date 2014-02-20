get "/tags/edit" do
	@tags = Tag.all

	erb :"tag_views/edit"
end

get "/tags/delete/:id" do
  Tag.find(params[:id]).destroy
  redirect to("/tags/edit")
end	

post "/tags/new" do
  Tag.create(name: params[:tag_name])
  redirect to("/tags/edit")
end