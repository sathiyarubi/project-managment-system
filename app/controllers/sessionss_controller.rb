class SessionsController < ApplicationController

skip_before_filter :check_session

def create

        authorized_user = Employee.find_by_email(params[:email])
        if authorized_user && authorized_user.authenticate(params[:password])
		redirect_to(:controller=>"employees",:action => 'profile')
                session[:user_id] = authorized_user.id
	else
		flash[:notice] = "Invalid Email or Password"
		render "new"
	end
end

def destroy
        session[:user_id] = nil
        redirect_to root_url, :notice => "Logged out!"
end
 end
=begin
def update
    @user = User.find(session[:user_id])
      if @user.update_attributes(params[:user])
       redirect_to :controller=>"employees",:action=>"index"
      else
       render "profile"
    end
  end

 def change_password
 end
 def password_update
	@user = User.find(session[:user_id])
       
       if @user.update_attributes(:password=>params[:password])
  
          redirect_to :action=>"employees"
      else
       render "profile"
    end
=end





=begin
  def new

  end

  def create
	authorized_user = User.find_by_name(params[:login][:username])
         
	   if authorized_user && authorized_user.authenticate(params[:login][:password])
		flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.name}"
		redirect_to(:action => 'index')
                session[:user_id] = authorized_user.id
	   else
		flash[:notice] = "Invalid Username or Password"
		render "login"
	   end
  end


def new
end

def create
  raise "test".inspect
  user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
end
=end



