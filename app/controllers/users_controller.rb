class UsersController < ApplicationController
  def show
  end

  def index
    @users=User.find(:all, :conditions => "role is not null")
    @users_no_role = User.find(:all, :conditions => "role is null")
   respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @users }
    end

  end

end
