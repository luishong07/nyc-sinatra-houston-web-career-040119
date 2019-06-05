class LandmarksController < ApplicationController
  # add controller methods
  get '/landmarks' do
    @landmarks = Landmark.all
    @figures = Figure.all
    erb :'landmarks/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

   post '/landmarks' do
     Landmark.create(name: params['landmark']['name'], year_completed:params['landmark']['year_completed'])
     redirect '/landmarks'
   end

#editing
   get '/landmarks/:id/edit' do
     @landmark = Landmark.find(params[:id])
     erb :'landmarks/edit'
   end

   patch '/landmarks/:id' do
     @landmark = Landmark.find(params[:id])
     @landmark.update(name: params[:name])
   end
#showing
   get '/landmarks/:id' do
     @landmark = Landmark.find(params[:id])
     erb :'landmarks/show'
   end




end
