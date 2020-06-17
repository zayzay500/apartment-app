class ApartmentsController < ApplicationController

  set :views, "app/views/apartments"
  # add controller methods
  get '/apartments' do
    @apartments = Apartment.all
    erb :index
  end
  
  get '/apartments/new' do
    erb :new
  end
  
  get 'apartments/:id' do
    erb :show
  end
  
  post 'apartments/' do
  
  end
  
  patch 'apartments/:id' do
  
  end
  
  delete 'apartments/:id' do
  
  end
  
  def get_apartment
    Apartment.find(params[:id])
  end
end
