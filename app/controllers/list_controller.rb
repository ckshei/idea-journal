class ListController < ApplicationController

  get '/lists/:slug/edit' do
    @list = List.find_by_slug(params[:slug])
    erb :'/lists/edit'
  end

  patch '/lists/:slug/edit' do
    @list = List.find_by_slug(params[:slug])
    @list.update(params[:list])
    redirect to "/lists/#{@list.slug}"
  end

  get '/lists/:slug' do
    @list = List.find_by_slug(params[:slug])
    erb :'/lists/show'
  end

  post '/lists/:slug' do
    @idea = Idea.create(params[:idea])
    redirect to "/lists/#{params[:slug]}"
  end
end