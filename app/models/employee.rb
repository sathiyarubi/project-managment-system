class Employee < ActiveRecord::Base
  attr_accessible :address, :city, :dob, :email, :gender, :manager_id, :mobile_no, :name, 
                  :password_confirmation, :password, :pin_code, :role_id, :state
  has_secure_password

	#Associations
  has_many :timesheets
  belongs_to :role
  has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee"

  #Validatioins
  
	validates :role_id,    :presence=>true
  validates :manager_id, :presence=>true
  validates :name,       :presence=>{:on=>:create},:format=>{:with => /^[^0-9`!@#\$%\^&*+_=]+$/ }, 
                         :length => {:within => 2..30}
                       
  validates :gender,     :presence=>true
  validates :email,      :presence=>true, 
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i},
            :length => { :maximum => 50 } , :uniqueness=>{ case_sensitive: true }
  validates :password,   :presence=>true, :confirmation => { :if=>:password_present? }, :length => {:within => 6..30} 
  validates :address,    :presence=>true
  validates :city,       :presence=>true
  validates :state,      :presence=>true
  validates :pin_code,   :presence=>true, :numericality=>true
  validates :mobile_no,  :presence=>true, :numericality=>true, :length=>{:is=>10}
 

  validate :check_dob
#  validate :admin_create_at_onece
  
  #Methods
		def check_dob
      if self.dob_changed?
      	currentYear  = Time.now.year.to_i
	      selectedYear = DateTime.strptime(self.dob,"%Y-%m-%d").to_time
        errors.add(:dob, "can't be blank") if self.dob == ""            
        # if selectedYear > currentYear     
        # self.errors[:dob].delete("invalid")
        # end
      end
		end
		
		def password_present?
		    password.present?
		end
		
=begin
   def admin_create_at_onece
		  if  Employee.find_by_role_id('1').present?
		      errors[:role_id] << ' Admin is already exist '
		  end          

   end
=end   
    
end
