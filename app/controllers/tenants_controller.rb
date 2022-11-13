class TenantsController < ApplicationController
  before_action :find_tenant, only: [show, :update, :destroy]
  

  def index
    tenants = Tenant.all
    render json: tenants, status: :ok
   end 
  
   def show
     render json: @tenant, status: :ok
   end 
  
   def create 
    apartment = Tenant.create!(tenant_params)
    render json: tenant, status: :created
  
    def update
      @tenant.update!(tenant_params)
      render json: @tenant
    end
  
    def destroy
      @tenant.destroy
      head :no_content
    end
  
   private 
  
   def find_tenant
    @tenant = Tenant.find (params[:id])
   end
  
   def tenant_params
    params.permit(:name, :age)
   end
  b
end
