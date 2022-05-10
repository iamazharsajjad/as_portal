# frozen_string_literal: true

class Admin
  class AdminsController < ApplicationController
    before_action :authenticate_admin!

    def index
      @current_admin = current_admin.email
    end
  end
end
