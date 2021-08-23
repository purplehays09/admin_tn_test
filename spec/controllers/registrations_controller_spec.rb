require 'rails_helper'

RSpec.describe RegistrationsController do
  
  describe "GET new" do
    it "is valid with valid data" do
      get :new
      expect(response).to have_http_status(:ok)  
    end
  end
  
  describe "POST create" do
    it "creates a new user" do
      user = {
        email:"hey@joe.com1",
        password:'guest'
      }
      
      post :create, params: {user: user}

      expect(response).to have_http_status(302)
    end
  end
  
end
