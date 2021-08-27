require 'rails_helper'

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

   it "is not valid without email attribute" do
    subject.email = nil 
    expect(subject).to_not be_valid
     
   end
   

end
