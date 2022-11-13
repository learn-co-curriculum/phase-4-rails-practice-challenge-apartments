class ApartmentsController < ApplicationController
  before_action :find_apartment, only: [show, :update, :destroy]
  

def index
  apartments = Apartment.all
  render json: apartments, status: :ok
 end 

 def show
   render json: @apartment, status: :ok
 end 

 def create 
  apartment = Apartment.create!(apartment_params)
  render json: apartment, status: :created

  def update
    @apartment.update!(apartment_params)
    render json: @apartment
  end

  def destroy
    @apartment.destroy
    head :no_content
  end

 private 

 def find_apartment
  @apartment = Apartment.find (params[:id])
 end

 def apartment_params
  params.permit(:number)
 end
b
end
