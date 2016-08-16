class ListController < ApplicationController

  get '/lists/:id/edit' do
    @list = List.find_by(id: params[:id])
    erb :'/lists/edit'
  end

  patch '/lists/:id/edit' do
    @list = List.find_by(id: params[:id])
    # binding.pry
    @list.update(id: params[:list])
    redirect to '/main'
  end
end