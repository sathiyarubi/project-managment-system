# Spec Helper
require 'spec_helper'

describe Employee do 

    before do     

         @employee = FactoryGirl.create(:employee)         

    end
    
      def create_employee
      
           @employee = FactoryGirl.create(:employee)
           
      end
      
     def create_session
           { :employee_id=>create_employee.id }
     end
#Associtations Validation
  context "association" do  
  
				 it{should have_many(:timesheets)}
				 it{should have_many(:subordinates)}
				 it{should belong_to(:role)}
				 it{should belong_to(:manager)}    

	end     

#Mass-assignment
	context "mass-assignment" do
	
					it {should allow_mass_assignment_of(:name)}
					it {should allow_mass_assignment_of(:email)}
					it {should allow_mass_assignment_of(:password)}
					it {should allow_mass_assignment_of(:gender)}
					it {should allow_mass_assignment_of(:address)}
					it {should allow_mass_assignment_of(:city)}
					it {should allow_mass_assignment_of(:state)}
					it {should allow_mass_assignment_of(:pin_code)}
					it {should allow_mass_assignment_of(:mobile_no)}
		  
	 end


#Validation
  context "validation" do       

# this is  one of way for  validaiton using factory 
					it "is invalid without a firstname" do
							  FactoryGirl.build(:employee,name: 'sathiya123').should_not be_valid
					end

			 
					it { should validate_presence_of(:name) }
					it { should_not allow_value('sathiya123').for(:name) }
					it { should allow_value('sathiya').for(:name) }
					it { should_not allow_value('sathiya123').for(:name) }
			
					it { should ensure_length_of(:email).is_at_most(50) }
				 	it { should allow_value('test@example.com').for(:email) }
				 	it { should_not allow_value('test').for(:email) }
			 	  it { should validate_uniqueness_of(:email)}
			 	 
					it { should validate_presence_of(:password)}
					it { should validate_confirmation_of(:password)}
					it { should ensure_length_of(:password).is_at_least(6).is_at_most(30) }
			
					it { should validate_presence_of(:gender) }
			
					it { should validate_presence_of(:address) }
			
					it { should validate_presence_of(:city) }
			
					it { should validate_presence_of(:state) }
			
					it { should validate_presence_of(:pin_code) }
					it { should validate_numericality_of(:pin_code) }
			
					it { should validate_presence_of(:mobile_no) }
					it { should validate_numericality_of(:mobile_no) }
					it { should ensure_length_of(:mobile_no) }
					it { should allow_value('1234567890').for(:mobile_no)}
					it { should_not allow_value('956838llpp').for(:mobile_no) }
			 		
  end
 
#DB validation
  context "db_column" do
			 
					it {should have_db_column(:name).of_type(:string)}
					it {should have_db_column(:email).of_type(:string)}
					it {should have_db_column(:password_digest).of_type(:string)}
					it {should have_db_column(:gender).of_type(:string)}
					it {should have_db_column(:city).of_type(:string)}
					it {should have_db_column(:state).of_type(:string)}    
					it {should have_db_column(:pin_code).of_type(:string)}
					it {should have_db_column(:mobile_no).of_type(:string)}
				
  end
 
 
 context "admin validation" do
 
				  it "admin_created_at_once" do
					
							Employee.delete_all
							exist_employee =  Employee.find_by_role_id("1")
							exist_employee.should be_nil
							employee = Employee.new(FactoryGirl.attributes_for(:employee,:role_id=>"1"))
							employee.save.should be_true
					
				  end
				  
				  it "admin_not_create_more_than_once" do
				  
							 employee = Employee.new(FactoryGirl.attributes_for(:employee,:role_id=>"1"))
							 employee.save
							 exist_employee =  Employee.find_by_role_id("1")
							 exist_employee.should_not be_nil      
							 employee.role_id = exist_employee.role_id
							 employee.save
							 employee.errors[:role_id] << ' Admin is already exist '
							 
				  end
end
context 'password validation' do

				  it  "password validation"   do
				       @employee.password= nil
				       @employee.password_present?
				       @employee.password.should be_false
				  end
				  it  "password validation"   do
				       @employee.password_present?
				       @employee.password.should be_true
				  end
end
context 'date validation' do
					it 'date validation false' do
							 @employee.dob=nil
							 @employee.present?
							 @employee.dob.should be_false
					end
		
					it 'date validation true' do
							 @employee.present?
							 @employee.dob.should be_true
					end
end

context 'deleted user should not login ' do
          it 'delete user validation' do
               @employee = FactoryGirl.create(:employee)
               @employee.destroy
                 message = User.authenticate(@employee.email,'password')
                 message.should_not 
          end
          
end
end

 
=begin
function validdation
 context "function using validation"
      
      describe "attr_validations" do
      
           def attr_validation 
           {
           	:name=>Faker::Name.name, :email=>Faker::Internet.email, :dob=>"01-05-2013"
           }	
           
      end
          
          it "dob format validation" do
          
            @employee = Employee.new(attr_validation)
            @employee.dob = "01-02-2013"
            @employee.save.should be_false
            @employee.errors[:dob]
            
          end
     end
=end


