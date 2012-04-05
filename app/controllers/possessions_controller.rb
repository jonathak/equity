class PossessionsController < ApplicationController
  # GET /possessions
  # GET /possessions.xml
  def index
    company_id = session[:company_id]
    @possessions = Possession.all.select{|p| p.composite_id.s.company.id == company_id}

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @possessions }
    end
  end

  # GET /possessions/1
  # GET /possessions/1.xml
  def show
    @possession = Possession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @possession }
    end
  end

  # GET /possessions/new
  # GET /possessions/new.xml
  def new
    @possession = Possession.new
    
    # need to add some ajax code to eliminate composite from list of available components
    
    if session[:company_id].to_i > 0
      @company = session[:company_id].company
      @securities = [Security.new(:name => "select one")] + @company.securities
      @composite_securities = [Security.new(:name => "select one")] + @company.securities.select{|s| s.kind == "5"}
    else
      @securities = [Security.new(:name => "none available")]
      @composite_securities = [Security.new(:name => "none available")]
    end

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @possession }
    end
  end

  # GET /possessions/1/edit
  def edit
    @possession = Possession.find(params[:id])
  end

  # POST /possessions
  # POST /possessions.xml
  def create
    @possession = Possession.new(params[:possession])

    respond_to do |format|
      if @possession.save
        format.html { redirect_to("/companies/#{session[:company_id]}", :notice => 'Possession was successfully created.') }
        format.xml  { render :xml => @possession, :status => :created, :location => @possession }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @possession.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /possessions/1
  # PUT /possessions/1.xml
  def update
    @possession = Possession.find(params[:id])

    respond_to do |format|
      if @possession.update_attributes(params[:possession])
        format.html { redirect_to(@possession, :notice => 'Possession was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @possession.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /possessions/1
  # DELETE /possessions/1.xml
  def destroy
    @possession = Possession.find(params[:id])
    @possession.destroy

    respond_to do |format|
      format.html { redirect_to(possessions_url) }
      format.xml  { head :ok }
    end
  end
end
