require 'rails_helper'

RSpec.describe SessionsController do

  describe "GET ceate" do
    it "returns user with email" do
      jimi = User.create(
        email:'hey@joe1.com',
        password:'guest'
      )
      puts"\n\n jimi.email = #{jimi.email}\n\n"

      user = User.find_by(email: jimi.email)
      puts"\n\nuser = #{user}\n\n"

      expect(user.present?).to be(true)
    end
    
  end
  
end
