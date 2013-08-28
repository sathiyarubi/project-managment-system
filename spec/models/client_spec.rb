# Getting spec helper
require 'spec_helper'

#Association validation
describe Client do

before do

    @client = FactoryGirl.create(:client)
    
end
   
   
context "Association" do
  
     it {should have_many(:projects).dependent(:destroy)}
     
end
# Mass-assginment validation
context "mass-assignment"  do

      it{should allow_mass_assignment_of(:name)}
      it{should allow_mass_assignment_of(:email)}
      it{should allow_mass_assignment_of(:address)}
      it{should allow_mass_assignment_of(:company)}      
      it{should allow_mass_assignment_of(:city)}
      it{should allow_mass_assignment_of(:state)}      
      it{should allow_mass_assignment_of(:phone)}
      it{should allow_mass_assignment_of(:zip)}      
end

#Validation
context "validation" do

      it{should validate_presence_of(:name)}
      it{should_not allow_value('name12345').for(:name)}
      it{should allow_value('name').for(:name)}
      it{should ensure_length_of(:name).is_at_most(25)}
      
      it{should validate_presence_of(:email)}
			it{should validate_uniqueness_of(:email) }
			it{should allow_value('test@wxample.com').for(:email)}
		  it{should_not allow_value('@wxample').for(:email)}
		  it{should ensure_length_of(:email).is_at_most(50)}
		  
      it{should validate_presence_of(:address)}
      
      it{should validate_presence_of(:company)}
      
      it{should validate_presence_of(:city)}
      it{should allow_value('test').for(:city)}

      it{should validate_presence_of(:state)}
      it{should_not allow_value('123').for(:state)}
      
      it{should validate_presence_of(:phone)}
      it{should validate_numericality_of(:phone)}
      it{should ensure_length_of(:phone).is_equal_to(10)}
      
      it{should validate_presence_of(:zip)}
      it{should validate_numericality_of(:zip)}
      it{should ensure_length_of(:zip).is_equal_to(6)}
      
   end
   
end
