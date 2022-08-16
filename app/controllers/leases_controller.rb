class LeasesController < ApplicationController

    def create
        render json: Lease.create!(params), status: :created
    end

    def destroy
        lease = Lease.find(params[:id])
        lease.destroy
        headers :no_content
    end

end
