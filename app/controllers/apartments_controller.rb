class ApartmentsController < ApplicationController
  # add controller methods
  set :views, "app/views/apartments"

    #Displaying list of all the apartments
    get '/apartments' do
        @apartments = Apartment.all
        erb :index
    end

    #form for creating a new apartment
    get '/apartments/new' do
        erb :new
    end

    #Show page for single apartment
    get '/apartments/:id' do 
        @apartment = current_apartment
        erb :show
    end

    #form for editing an existing apartment
    get '/apartments/:id/edit' do
        @apartment = current_apartment
        erb :edit
    end

    #create an apartment
    post '/apartments' do
        apartment = Apartment.create(params)
        redirect "/apartments/#{apartment.id}"
    end

    #updating an apartment
    patch '/apartments/:id' do
        apartment = current_apartment
        apartment.update(address: params[:address])
        
        redirect "/apartments/#{apartment.id}"
    end

    #Delete an apartment
    delete '/apartments/:id' do
        apartment = current_apartment
        apartment.destroy
        redirect '/apartments'
    end

    def current_apartment
        Apartment.find(params[:id])
    end
end
