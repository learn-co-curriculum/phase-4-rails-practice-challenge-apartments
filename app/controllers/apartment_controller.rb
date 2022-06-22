class ApartmentController < ApplicationController


    def show
        render json: Apartment.find(params[:id]), status: 302
    end

    def create
        render json: Apartment.create!(params.permit(:number) ), status: 201
    end

    def update
        locate= Apartment.find(params[:id])
        locate.update!(params.permit(:number) )
        render json: locate, status: 200
    end

    def destroy
        locate = Apartment.find(params[:id])
        locate.destroy
        head :no_content
    end
end
