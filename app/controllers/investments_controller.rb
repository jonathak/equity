class InvestmentsController < ApplicationController
  # GET /investments
  # GET /investments.xml
  def index
    @investments = Investment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @investments }
    end
  end

  # GET /investments/1
  # GET /investments/1.xml
  def show
    @investment = Investment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @investment }
    end
  end

  # GET /investments/new
  # GET /investments/new.xml
  def new
    begin
      @investment = Investment.new
      @companies = Company.all
      @entity = params[:entity_id].to_i.e
      session[:entity_id] = @entity.id

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @investment }
      end
    rescue
      flash[:error_message] = "to create a new investment, please start by sending an invitation to your portfolio company."
      redirect_to :error
    end
  end

  # GET /investments/1/edit
  def edit
    @investment = Investment.find(params[:id])
  end

  # POST /investments
  # POST /investments.xml
  def create
    @investment = Investment.new(params[:investment])
    @companies = Company.all
    @investment.entity_id = session[:entity_id].to_i
    @entity = session[:entity_id].to_i.e

    respond_to do |format|
      if @investment.save
        format.html { redirect_to(@investment, :notice => 'Investment was successfully created.') }
        format.xml  { render :xml => @investment, :status => :created, :location => @investment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @investment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /investments/1
  # PUT /investments/1.xml
  def update
    @investment = Investment.find(params[:id])

    respond_to do |format|
      if @investment.update_attributes(params[:investment])
        format.html { redirect_to(@investment, :notice => 'Investment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @investment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /investments/1
  # DELETE /investments/1.xml
  def destroy
    @investment = Investment.find(params[:id])
    @investment.destroy

    respond_to do |format|
      format.html { redirect_to(investments_url) }
      format.xml  { head :ok }
    end
  end
end
