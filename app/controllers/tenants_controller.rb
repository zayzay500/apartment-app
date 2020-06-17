class TenantsController < ApplicationController
  # add controller methods
  set :views, "app/views/tenants"

  get '/tenants' do 
    @tenants = Tenant.all
    erb :index
  end
  
  get '/tenants/new' do
    @apartments = Apartment.all
    erb :new
  end
  
  get '/tenants/:id' do 
    @tenant = get_tenant
    erb :show
  end

  get '/tenants/:id/edit' do
    @apartments = Apartment.all
    @tenant = get_tenant
    erb :edit
  end
  
  post '/tenants' do 
    tenant = Tenant.create(params[:tenant])

    redirect "tenants/#{tenant.id}"
  end
  
  patch '/tenants/:id' do  
    tenant = Tenant.find(params[:id])
    tenant.update(params[:tenant])

    redirect "/tenants/#{tenant.id}"
  end
  
  delete '/tenants/:id' do
    tenant = Tenant.find(params[:id])
    tenant.delete
    redirect "/tenants"
  
  end

  def get_tenant
    Tenant.find(params[:id])
  end
end
