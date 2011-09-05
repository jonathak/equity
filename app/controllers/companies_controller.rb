class CompaniesController < ApplicationController
  # GET /companies
  # GET /companies.xml
  def index
    if session[:user_id].to_i > 0
      @companies = session[:user_id].to_i.user.companies
    else
      @companies = []
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @companies }
    end
  end

  # GET /companies/1
  # GET /companies/1.xml
  def show
    @company = Company.find(params[:id])
    session[:company_id] = @company.id
    if (@company.users.map(&:id).include?(session[:user_id]))
      @investment_entities = @company.alias_ids.map(&:e)

      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @company }
      end
    else
      redirect_to(:error, :notice => 'Company was successfully created.') 
    end
  end

  # GET /companies/new
  # GET /companies/new.xml
  def new
    if session[:user_id].to_i > 0
      @company = Company.new

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @company }
      end
    else
      redirect_to :error
    end
  end

  # GET /companies/1/edit
  def edit
    @company = Company.find(params[:id])
  end

  # POST /companies
  # POST /companies.xml
  def create
    @company = Company.new(params[:company])

    respond_to do |format|
      if @company.save
        
        # company creator gets full access
        King.create(:company_id => @company.id, :user_id => session[:user_id].to_i )
        
        # super user gets full access
        King.create(:company_id => @company.id, :user_id => 1 )
        
        # company always has itself as an entity
        Entity.create(:company_id => @company.id, :name => @company.name)
        
        # company always has common stock
        Security.create(:company_id => @company.id, 
                        :name       => 'common',
                        :kind       => 'common')
        
        format.html { redirect_to(@company, :notice => 'Company was successfully created.') }
        format.xml  { render :xml => @company, :status => :created, :location => @company }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @company.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /companies/1
  # PUT /companies/1.xml
  def update
    @company = Company.find(params[:id])

    respond_to do |format|
      if @company.update_attributes(params[:company])
        format.html { redirect_to(@company, :notice => 'Company was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @company.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.xml
  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    @company.entities.each do |e|
      e.destroy if e.investment
      e.destroy
    end
    @company.securities.each do |s|
      s.transactions.each(&:destroy)
      s.destroy
    end
    session[:company_id] = nil
    session[:entity_id] = nil

    respond_to do |format|
      format.html { redirect_to(companies_url) }
      format.xml  { head :ok }
    end
  end
end
