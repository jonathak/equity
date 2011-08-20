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
    @kinds = Kind.all.map(&:name)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @security }
    end
  end

  # GET /securities/1/edit
  def edit
    @security = Security.find(params[:id])
  end

  # POST /securities
  # POST /securities.xml
  def create
    @security = Security.new(params[:security])
    @kinds = Kind.all.map(&:name)

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

    respond_to do |format|
      if @security.update_attributes(params[:security])
        format.html { redirect_to(@security, :notice => 'Security was successfully updated.') }
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
    @security = Security.find(params[:id])
    @security.destroy

    respond_to do |format|
      format.html { redirect_to(securities_url) }
      format.xml  { head :ok }
    end
  end
end
