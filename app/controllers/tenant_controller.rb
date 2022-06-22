class TenantController < ApplicationController

    def show
        render json: locate, status: 302
    end

    def create
        render json: Apartment.create!(tenant_params), status: 201
    end

    def update
        locate.update!(tenant_params)
        render json: locate, status: 200
    end

    def destroy
        locate.destroy
        head :no_content
    end

    private

    def tenant_params
        params.permit(:name,:age)
    end

    def locate
        Tenant.find(params[:id])
    end


end
