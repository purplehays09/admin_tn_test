require 'rails_helper'

RSpec.describe SessionsController do

  describe "GET new" do
    it "renders the new file" do
      get :new
      expect(response).to render_template("new")
    end
    
  end
  
  describe "GET ceate" do
    it "returns user with email" do
      account = User.create(
        email:'hey@joe1.com',
        password:'guest'
      )
      puts"\n\n account.email = #{account.email}\n\n"
      
      user = User.find_by(email: account.email)
      puts"\n\nuser = #{user}\n\n"
      
      expect(user.present?).to be(true)
    end
    
    it "verifies password and creates a session" do
      account = User.create(
        email:'hey@joe.com',
        password:'guest'
      )

      post :create, params: {email:account.email,password:account.password}

      expect(response).to have_http_status(:found) 
      
    end
    
  end

  describe "POST destroy" do
    it "can delete a user session" do
      account = User.create(
        email:'hey@joe.com',
        password:'guest'
      )

      post :create, params: {email:account.email,password:account.password}

      post :destroy, params: {id: account.id}
      expect(response).to have_http_status(:found) 
    end
    
  end
  
  
end
