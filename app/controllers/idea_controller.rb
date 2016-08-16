class IdeaController < ApplicationController

  get '/ideas/:id/edit' do
    @idea = Idea.find(params[:id])
    erb :'/ideas/edit'
  end

  patch '/ideas/:id/edit' do
    @idea = Idea.find(params[:id])
    # binding.pry
    @idea.update(params[:idea])
    redirect to "/lists/#{List.find((@idea.list_id)).slug}"
  end
end