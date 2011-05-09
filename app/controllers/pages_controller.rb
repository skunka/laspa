class PagesController < ApplicationController
  def index
    @title = "Pradinis"
  end

  def about
    @title = "Apie"
  end

  def contact
    @title = "Kontaktai"
  end

end
