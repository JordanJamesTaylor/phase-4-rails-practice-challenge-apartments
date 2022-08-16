class TenantsController < ApplicationController

    before_action :set_tenant

    def index 
        render json: Tenant.all, status: :ok
    end

    def show
        render json: @tenant, status: :ok
    end

    def update
        render json: @tenant.update(tenant_params), status: :no_content
    end

    def destroy
        @tenant.destroy
        headers :no_content
    end

    private

    def set_tenant
        @tenant = Tenant.find(params[:id])
    end

    def tenant_params
        params.permit(:name, :age)
    end

end
