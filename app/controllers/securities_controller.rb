class SecuritiesController < ApplicationController
  
  # GET /securities
  # GET /securities.xml
  def index
    @securities = Security.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @securities }
    end
  end

  # GET /securities/1
  # GET /securities/1.xml
  def show
    @security = Security.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @security }
    end
  end

  # GET /securities/new
  # GET /securities/new.xml
  def new
    @security = Security.new
    @kinds = Kind.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @security }
    end
  end

  # GET /securities/1/edit
  def edit
    @security = Security.find(params[:id])
    @kinds = Kind.all
  end

  # POST /securities
  # POST /securities.xml
  def create
    @security = Security.new(params[:security])
    @kinds = Kind.all
    company_id = session[:company_id].to_i
    @security.company_id = company_id

    respond_to do |format|
      if @security.save
        format.html { redirect_to(@security, :notice => 'Security was successfully created.') }
        format.xml  { render :xml => @security, :status => :created, :location => @security }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @security.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /securities/1
  # PUT /securities/1.xml
  def update
    @security = Security.find(params[:id])
    if (@security.name == "common")
      params[:security][:name] = "common" 
      notice = "cannot rename common"
    else
      notice = 'Security was successfully updated.'
    end

    respond_to do |format|
      if @security.update_attributes(params[:security])
        format.html { redirect_to(@security, :notice => notice) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @security.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /securities/1
  # DELETE /securities/1.xml
  def destroy
    unless @security.name == "common"
      @security = Security.find(params[:id])
      @security.transactions.each(&:destroy)
      @security.destroy
    end
    @security.name == "common" ? notice = "cannot destroy common" : notice = ""

    respond_to do |format|
      format.html { redirect_to(securities_url, :notice => notice) }
      format.xml  { head :ok }
    end
  end
end
