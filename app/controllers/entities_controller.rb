class EntitiesController < ApplicationController
  # GET /entities
  # GET /entities.xml
  def index
    if session[:company_id].to_i > 0
      company = session[:company_id].to_i.company
      @entities = (company ? company.entities : [])
    else
      @entities = []
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entities }
    end
  end

  # GET /entities/1
  # GET /entities/1.xml
  def show
    @entity = Entity.find(params[:id])
    session[:entity_id] = @entity.id

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @entity }
    end
  end
  
  def liquidity
    @entity = Entity.find(params[:entity_id])
    session[:entity_id] = @entity.id
    @e_lc = @entity.liq_chart
    @c_lc = @entity.company.liq_chart
  end
  
  def liquidity_chart
    @entity = session[:entity_id].to_i.e
    @e_lc = @entity.liq_chart
    @c_lc = @entity.company.liq_chart
  end
  
  def percentage
    @entity = Entity.find(params[:entity_id])
    session[:entity_id] = @entity.id
    @pc = @entity.percentage_chart
  end
  
  def percentage_chart
    @entity = session[:entity_id].to_i.e
    @pc = @entity.percentage_chart
  end

  # GET /entities/new
  # GET /entities/new.xml
  def new
    if session[:company_id].to_i > 0
      @entity = Entity.new

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @entity }
      end
    else
      redirect :error
    end
  end

  # GET /entities/1/edit
  def edit
    @entity = Entity.find(params[:id])
  end

  # POST /entities
  # POST /entities.xml
  def create
    @entity = Entity.new(params[:entity])
    @entity.company_id = session[:company_id]

    respond_to do |format|
      if @entity.save
        format.html { redirect_to(session[:company_id].c, :notice => 'Entity was successfully created.') }
        format.xml  { render :xml => @entity, :status => :created, :location => @entity }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @entity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /entities/1
  # PUT /entities/1.xml
  def update
    @entity = Entity.find(params[:id])

    respond_to do |format|
      if @entity.update_attributes(params[:entity])
        format.html { redirect_to(session[:company_id].c, :notice => 'Entity was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @entity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /entities/1
  # DELETE /entities/1.xml
  def destroy
    c = session[:company_id].c
    @entity = Entity.find(params[:id])
    if (@entity.name == c.name)
      redirect_to :error, :message => "cannot destroy the entity representation of your company."
    elsif ((@entity.buys.count == 0) && (@entity.sales.count == 0))
      @entity.destroy
      redirect_to c
    else
      redirect_to :error, :message => "cannot destroy entity if it has transactions."
    end
  end
end
