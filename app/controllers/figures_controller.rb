class FiguresController < ApplicationController
  # add controller methods
  get '/figures' do
    @figures=Figure.all
    erb :'figures/index'
  end

  get '/figures/new' do
     erb :'figures/new'
  end

  post '/figures' do
  @figure=  Figure.create(name: params['figures'])
  unless params[:landmark][:name].empty?
    @figure.landmarks << Landmark.create(params[:landmark])
  end

  unless params[:title][:name].empty?
    @figure.titles << Title.create(params[:landmark])
  end

  @figure.save
  redirect to '/figures/#{@figure.id}'
  end

  get '/figures/:id' do
    @figures = Figure.find(params[:id])
    erb :'figures/show'
  end




end
