class TransactionsController < ApplicationController
  # GET /transactions
  # GET /transactions.xml
  def index
    @transactions = Transaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @transactions }
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
    @transaction = Transaction.new
    @companies = Company.all
    @securities = []
    @sellers = []
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @transaction }
    end
  end

  # GET /transactions/1/edit
  def edit
    @transaction = Transaction.find(params[:id])
  end

  # POST /transactions
  # POST /transactions.xml
  def create
    @transaction = Transaction.new(params[:transaction])
    @companies = Company.all

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to(@transaction, :notice => 'Transaction was successfully created.') }
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

    respond_to do |format|
      if @transaction.update_attributes(params[:transaction])
        format.html { redirect_to(@transaction, :notice => 'Transaction was successfully updated.') }
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
    puts "********************** #{company.name}"
    puts "********************** #{company.securities.map(&:name)}"
    @securities = company.securities
    @entities = company.entities
    respond_to do |format|
      format.js
    end
  end
  
  def sec
    security_id = params[:security_id].to_i
    if security_id > 0
      session[:security_id] = security_id
      security = params[:security_id].to_i.security
      puts "********************** #{security.name}"
      puts "********************** #{security.buyers.map(&:name)}"
      @owners = security.buyers
      @entities = session[:company_id].company.entities
    else
      @owners = []
      @entities = []
    end
    respond_to do |format|
      format.js
    end
  end
  
  def sel
    @seller_id = params[:seller_id].to_i
    if @seller_id > 0
      company = session[:company_id].company
      @entities = company.entities
    else
      @entities = []
    end
    puts "qqqqqqqqqqq seller id #{@seller_id}"
    puts "qqqqqqqqqqq entities #{@entities.map(&:name)}"
    respond_to do |format|
      format.js
    end
  end
  
end
