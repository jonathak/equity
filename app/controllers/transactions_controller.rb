class TransactionsController < ApplicationController
  # GET /transactions
  # GET /transactions.xml
  def index
    u_id = session[:user_id].to_i
    c_id = session[:company_id].to_i
    (u_id > 0) ? user = u_id.u : user = nil
    (c_id > 0) ? company = c_id.c : company = nil
    if (user && company && (user.companies.include?(company)))
      @transactions = company.transactions
    else
      @transactions = []
    end
  end

  # GET /transactions/1
  # GET /transactions/1.xml
  def show
    @transaction = Transaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @transaction }
    end
  end

  # GET /transactions/new
  # GET /transactions/new.xml
  def new
    if session[:company_id].to_i > 0
      @company = session[:company_id].company
      @transaction = Transaction.new
      @securities = [Security.new(:name => "select one")] + @company.securities
      @entities = @company.entities
      @sellers = []
    
      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @transaction }
      end
    else
      flash[:error_message] = "must have an active company session to make a transaction."
      redirect_to :error
    end
  end

  # GET /transactions/1/edit
  def edit
    @transaction = Transaction.find(params[:id])
    @company = session[:company_id].company
    @transaction = Transaction.new
    @securities = [Security.new(:name => "select one")] + @company.securities
    @entities = @company.entities
    @sellers = []
  end

  # POST /transactions
  # POST /transactions.xml
  def create
    @transaction = Transaction.new(params[:transaction])
    @company = session[:company_id].company
    @securities = @company.securities
    @entities = @company.entities
    @sellers = []

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to(transactions_path, :notice => 'Transaction was successfully created.') }
        format.xml  { render :xml => @transaction, :status => :created, :location => @transaction }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @transaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /transactions/1
  # PUT /transactions/1.xml
  def update
    @transaction = Transaction.find(params[:id])
    @company = session[:company_id].company
    @securities = @company.securities
    @entities = @company.entities
    @sellers = []

    respond_to do |format|
      if @transaction.update_attributes(params[:transaction])
        format.html { redirect_to(session[:company_id].to_i.c, :notice => 'Transaction was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @transaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions/1
  # DELETE /transactions/1.xml
  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy

    respond_to do |format|
      format.html { redirect_to(transactions_url) }
      format.xml  { head :ok }
    end
  end
  
  def com
    company_id = params[:company_id].to_i
    session[:company_id] = company_id
    company = params[:company_id].to_i.company
    @securities = company.securities.uniq
    @entities = company.entities.uniq
    respond_to do |format|
      format.js
    end
  end
  
  def sec
    security_id = params[:security_id].to_i
    if security_id > 0
      kind = security_id.s.kind
      session[:security_id] = security_id
      security = security_id.s
      @owners = [Entity.new(:name => "select one")] + 
                [security.company.entities.where(:name => security.company.name).first] +
                security.buyers.uniq
    else
      @owners = []
      @entities = []
    end
    respond_to do |format|
      format.js {
        case kind.to_i
          when 1
            render "sec_com"
          when 2
            render "sec_opt"
          when 3
            render "sec_debt"
          when 4
            render "sec_pref"
          when 5
            render "sec_com"
          else
            render "sec"
        end
      }
    end
  end
  
  def sel
    @seller_id = params[:seller_id].to_i
    if @seller_id > 0
      company = session[:company_id].company
      @entities = [Entity.new(:name => "select one")] +
                  company.entities.uniq +
                  [Entity.new(:name => "new investor")]
    else
      @entities = []
    end
    respond_to do |format|
      format.js
    end
  end
  
end
