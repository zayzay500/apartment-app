class TenantsController < ApplicationController

  set :views, "app/views/tenants"

    get '/tenants' do
        @tenants = Tenant.all
        # erb :'tenants/index'
        erb :index
    end

    get '/tenants/new' do
        @apartments = Apartment.all
        erb :new
    end


    get '/tenants/:id' do 
        @tenant = Tenant.find(params[:id])
        erb :show
    end

    get '/tenants/:id/edit' do
        @tenant = Tenant.find(params[:id])
        @apartments = Apartment.all
        erb :edit
    end

    post '/tenants' do
        tenant = Tenant.new(params[:tenant])

        if !params[:apartment][:address].empty?
            new_author = Apartment.create(params[:apartment])
            tenant.apartment = new_author
        end

        tenant.save
        redirect "/tenants/#{tenant.id}"
    end

    patch '/tenants/:id' do
        tenant = Tenant.find(params[:id])
        tenant.update(params[:tenant])

        if !params[:apartment][:address].empty?
            new_author = Apartment.create(params[:apartment])
            tenant.update(apartment_id: new_author.id)
        end
        
        redirect "/tenants/#{tenant.id}"
    end

    delete '/tenants/:id' do
        tenant = Tenant.find(params[:id])
        tenant.destroy
        redirect '/tenants'
    end
end
