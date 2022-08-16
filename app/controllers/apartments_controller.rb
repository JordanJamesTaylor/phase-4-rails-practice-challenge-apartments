class ApartmentsController < ApplicationController

    before_action :set_apartment

    def index
        render json: Apartment.all, status: :ok
    end

    def show
        render json: @apartment
    end

    def update
        render json: @apartment.update(apartment_params), status: :accepted
    end

    def destroy
        @apartment.destroy
        headers :no_content
    end

    private 

    def set_apartment
        @apartment = Apartment.find(params[:id])
    end

    def apartment_params
        params.permit(:number)
    end

end