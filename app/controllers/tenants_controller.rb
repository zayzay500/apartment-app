class TenantsController < ApplicationController
  # add controller methods
  
  get '/tenants' do 
  
  end
  
  get '/tenants/new' do
  
  end
  
  get '/tenants/:id' do 
  
  end
  
  post '/tenants' do 
  
  end
  
  patch '/tenants/:id' do  
  
  end
  
  delete '/tenants/:id' do 
  
  end

  def get_tennant
    Tenant.find(params[:id])
  end
end
