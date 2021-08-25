require 'rails_helper'

RSpec.describe PeoplesController do
  describe "GET new" do
    it "returns an ok http status" do
      get :new
      expect(response).to have_http_status(:ok) 
    end
    
  end
  
  
end
