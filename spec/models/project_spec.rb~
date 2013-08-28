# Getting spec helper
require 'spec_helper'

#Association validation 
describe Project do
  
    before do     

         @project = FactoryGirl.create(:project)         

    end

  
  context 'association' do
  
        it{ should have_many(:timesheet_details)}
        it{ should belong_to(:client) }
        
  end
#mass-assignment validation 
    context 'mass-assignment validation ' do
        	it {should allow_mass_assignment_of(:name)}
					it {should allow_mass_assignment_of(:start_date)}
					it {should allow_mass_assignment_of(:end_date)}
					it {should allow_mass_assignment_of(:client_id)}
    end
  context "validation" do
 
        it{ should validate_presence_of(:name)} 
        it{ should allow_value('test').for(:name)} 
        it{ should_not allow_value('jakdsf355').for(:name) }
            
   end
   
   context "db_column" do
   
        it { should have_db_column(:name). of_type(:string)}
        it { should have_db_column(:start_date). of_type(:string)}
        it { should have_db_column(:end_date). of_type(:string)}
        it { should have_db_column(:client_id). of_type(:string)}
            
   end
   context 'date validation' do
   
					 it  'start date validation ' do
							 @project.start_date.present?
							 @project.start_date.should be_true
					 end
       
       it  'end date validation ' do
           @project.end_date=nil
           @project.end_date.present?
           @project.end_date.should be_false
       end
       
   end
end
