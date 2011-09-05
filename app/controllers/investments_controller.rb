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
    #begin
      @investment = Investment.new
      @companies = Company.all
      @entity = params[:entity_id].to_i.e
      session[:entity_id] = @entity.id

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @investment }
      end
    #rescue
    #  flash[:error_message] = "to create a new investment, please start by sending a invitation/request to your portfolio company."
    #  redirect_to :error
    #end
  end

  # GET /investments/1/edit
  def edit
    @investment = Investment.find(params[:id])
  end

  # POST /investments
  # POST /investments.xml
  def create
    if (session[:company_id] && (session[:company_id] > 0))
      @investment = Investment.new(params[:investment])
      @companies = Company.all
      @investment.entity_id = session[:entity_id].to_i
      @investment.company_id = session[:company_id].to_i
      @entity = session[:entity_id].to_i.e

      respond_to do |format|
        if @investment.save
          format.html { redirect_to(:companies, :notice => 'Investment was successfully created.') }
          format.xml  { render :xml => @investment, :status => :created, :location => @investment }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @investment.errors, :status => :unprocessable_entity }
        end
      end
    else
      flash[:error_message] = "must choose a company. if you do not already have one, please create on before accepting the invitation to link to a portfolio company."
      redirect_to :error
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

  def inv_log
    session[:inv] = :log
    respond_to do |format|
      format.js
    end
  end

  def inv_sign
    session[:inv]= :sign
    respond_to do |format|
      format.js
    end
  end
  
  def inv_submit
    session[:company_id] = params[:company_id].to_i
    respond_to do |format|
      format.js
    end
  end

  def cont 
    case session[:inv]
      when :log
        # log in to existing user account
        if User.where(:email => params[:email]).exists?
          if ((user =User.where(:email => params[:email]).first).login) == params[:password]
            session[:user_id] = user.id
            @companies = user.companies
          else
            flash[:error_message] = "incorrect login credentials."
            redirect_to :error
          end
        else
          flash[:error_message] = "incorrect login credentials."
          redirect_to :error
        end
      when :sign
        # create new user account
        user = User.new
        user.email = params[:email]
        user.login = params[:password]
        user.save(:validate => false)
        session[:user_id] = user.id.to_i
        # assume company name is same as requesting entity name.
        company = Company.new
        company.name = session[:entity_id].to_i.e.name
        company.save(:validate => false)
        session[:company_id] = company.id
        # link user to company
        king = King.new
        king.company_id = session[:company_id]
        king.user_id = session[:user_id]
        king.save(:validate => false)
      else
        redirect_to :error
    end
    respond_to do |format|
      format.js {
        case session[:inv]
          when :log
            render "log"
          when :sign
            render "sign"
          else
            redirect_to :error
        end
      }
    end
  end
end