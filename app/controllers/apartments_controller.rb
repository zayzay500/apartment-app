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
  
  get '/apartments/:id' do
    # binding.pry
    @apartment = get_apartment
    @tenants = @apartment.tenants
    erb :show
  end
  
  post '/apartments' do
    aparment = Apartment.create(params)

    redirect "/apartments/#{aparment.id}"
  end
  
  delete '/apartments/:id' do
    apartment = get_apartment
    apartment.delete

    redirect "/apartments"
  end
  
  def get_apartment
    Apartment.find(params[:id])
  end
end
