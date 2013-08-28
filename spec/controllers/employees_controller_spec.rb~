# controller getting spec helper
  require 'spec_helper'
  
  describe EmployeesController do
  
      def create_employee
      
           @employee = FactoryGirl.create(:employee)
           
      end
      
       
      def create_session
            
           { :employee_id=>create_employee.id }
      
      end
      
      context " index method " do
          before do 
             get   :index ,create_session
         end      
         it { should respond_with(:redirect)  }	
         it { should_not set_the_flash }
         it { should route(:get, '/employees').to( :action => :index) }
        
      end

 context " new method " do
          before do         
             get :new 
          end
         #it { should render_template(:new)  }

         it { should_not set_the_flash }
         it { should respond_with(:redirect)  }	
         it { should route(:get, '/employees/new').to(:action => :new) }
        
      end


 context "create method" do
          before do
             post  :create 
          end
       
         #it { should render_template(:new)  }
         it { should_not set_the_flash }
         it { should respond_with(:redirect)  }	
         it { should route(:post, '/employees').to(:action => :create) }
                
      end

context "edit" do
        before do
       	    get :edit, { :id=>create_employee.to_param }
       end
     
         it { should_not set_the_flash }
         it { should respond_with(:redirect)  }	
         it { should route(:get, '/employees/create_session/edit').to(:action => :edit, :id => 'create_session') }
            
end

 context "show method" do
 
          before do         
                get  :show ,  { :id=>create_employee.id  } 
          end
          
          it { should respond_with( :redirect ) }          
          it { should route(:get, '/employees/create_session').to(:action => :show, :id =>'create_session') }
          
      end
      
 context "delete method" do
 
      before do
           delete  :destroy, { :id=>'create_session'}
      end
      
#  checkit later    it { should redirect_to ("http://localhost:3000/employees")   }
      it { should respond_with( :redirect ) }
      it { should route(:delete, '/employees/1').  to(:action => :destroy, :id => 1) }
      
 end
 
 
  context "session method" do
      it "session validation" do 
          @employee = FactoryGirl.create(:employee)
          @employee.id.present?
           @employee.should be_true 
      end
  end
=begin

 context 'session validaion' do
       it { should set_session(:message) }
			it  { should set_session(:employee_id).to(create_employee.id) }
			it  { should_not set_session(:employee_id) }
 end
 
=end 
       
  end
