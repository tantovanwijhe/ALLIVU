class ServicesController < ApplicationController
  def index
    @categories = Service::CATEGORIES
  end
end
