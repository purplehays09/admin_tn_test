class PeoplesController < ApplicationController
  def new
    @people = People.new
  end
end