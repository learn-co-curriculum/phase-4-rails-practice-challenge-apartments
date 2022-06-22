class LeaseController < ApplicationController


    def create
        render json: Lease.create!(lease_params), status: 201
    end

  

    def destroy
        locate.destroy
        head :no_content
    end

    private

    def lease_params
        params.permit(:rent, :apartment_id, :tenant_id)
    end

    def locate
        Lease.find(params[:id])
    end


end
