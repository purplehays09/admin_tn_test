require 'rails_helper'
require './app/models/user'


RSpec.describe User do
  subject { 
    User.new(
      email:'david.hays@tuftandneedle.com',
      password:'guest'
    )
   } 

   it "is valid with valid attributes" do
     expect(subject).to be_valid 
   end
   
end
