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

end
