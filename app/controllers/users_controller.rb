class UsersController < ApplicationController
  # GET /users
  # GET /users.xml

  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new
puts "######### new user #####"
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
      
    end
  end

  # GET /users/1/edit
  def edit
    @project = Project.find(params[:id])
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to("/users", :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
        puts "#########"
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
  
    project = session["project"]
    @user = User.find(params[:id])

    respond_to do |format|
     if session['user_status'].nil? and @user.update_attribute(:project_id,project)

       format.html { redirect_to("/projects/#{project}", :notice => 'User added in project...') }
        format.xml  { head :ok }
        
      elsif session['user_status']== 'remove' and @user.update_attributes(params[:user]) and @user.update_attribute(:project_id, nil)

        format.html { redirect_to("/projects/#{project}", :notice => 'User added in project') }
        format.xml  { head :ok }
      else

        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
      
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

 def update_project

    project = session["project"]
    @user = User.find(params[:id])

    respond_to do |format|
     
     
      if @user.update_attributes(params[:user]) and @user.update_attribute(:project_id, nil)

        format.html { redirect_to("/projects/#{project}", :notice => 'User added in project') }
        format.xml  { head :ok }
      else

        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end

    end
  end


end
