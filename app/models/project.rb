class Project < ActiveRecord::Base
  attr_accessible :client_id, :end_date, :name, :start_date
  has_many :timesheet_details
  belongs_to :client

  #regexymd = /^[0-9]{4}[-][0-9]{1,2}[-][0-9]{1,2}$/
  #regex_final = Regexp.union(regexymd)
  #:format => { :with => regex_final },
  validates :client_id, :presence=>true

  validate :check_start_date 
               def check_start_date 
                   if self.start_date_changed?
                       if self.start_date == "" 
                          errors.add(:start_date,"can't be blank")
                       end
                   end
               end
               
  validate :check_end_date 
               def check_end_date 
                   if self.end_date_changed?
                       if self.end_date == ""
                          errors.add(:end_date,"can't be blank")
                       end
                   end
               end

  validates :name, 
            :presence=>false, 
            :format=>{:with => /^[^0-9`!@#\$%\^&*+_=]+$/}
end
