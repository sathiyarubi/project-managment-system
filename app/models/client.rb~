class Client < ActiveRecord::Base
  attr_accessible :address, :city, :company, :name, :phone, :state, :zip, :email
  
  has_many :projects,dependent: :destroy
 
  validates :name, 
            :presence=>true,
            :length=>{ maximum: 25 },
            :format=>{:with => /^[^0-9`!@#\$%\^&*+_=]+$/ }

  validates :email, 
            :presence=>true,
            :uniqueness => true,
            :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i},
            :length => { :maximum => 50 }

  validates :address, 
            :presence=>true

  validates :company, 
            :presence=>true

  validates :city, 
            :presence=>true
   
  validates :state, 
            :presence=>true,
            :format=>{:with => /^[^0-9`!@#\$%\^&*+_=]+$/ }

  validates :phone,
            :presence=>true,
            :numericality=>true,
            :length=>{:is=>10}
           
  validates :zip, 
            :presence=>true,   
            :length=>{:is=>6},   
            :numericality=>true   
             
end
