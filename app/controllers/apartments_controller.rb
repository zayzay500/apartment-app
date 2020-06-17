class ApartmentsController < ApplicationController
  # add controller methods
  get '/apartments' do
  
  end
  
  get '/apartments/new' do
  
  end
  
  get 'apartments/:id' do
  
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
