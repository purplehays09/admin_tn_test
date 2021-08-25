require 'rails_helper'

RSpec.describe People do
  subject {
    People.new(
      email:'david.hays@tuftandneedle.com',
      name:'David',
      phone_number:'8005882300'
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