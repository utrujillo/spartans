module Admin
  class HomeController < ApplicationController

    before_filter :authenticate_user!
    layout 'adminterface'

    def index
    end

  end
end
