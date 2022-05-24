# frozen_string_literal: true

class Admin
  class AdminsController < ApplicationController
    before_action :authenticate_admin!

    def index
      @current_admin = current_admin.email
    end

    def show
      @admins = Admin.find(params[:id])
    end

    def edit
      @admin = Admin.find(params[:id])
    end

    def update
      @admin = Admin.find(params[:id])

      if @admin.update(admin_params)
        redirect_to department_admins_path(@admin)
      else
        render :edit
      end
    end

    private

      def admin_params
        params.require(:admin).permit(:name)
      end
  end
end
