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
      session[:company_id] = nil
      session[:entity_id] = nil
      @investment = Investment.new
      @companies = Company.all
      if params[:entity_id]
        @entity = params[:entity_id].to_i.e
        session[:entity_id] = @entity.id
      elsif params[:company_id]
        @company = params[:company_id].to_i.c
        session[:company_id] = @company.id
      else
        render :error
      end

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @investment }
      end
    #rescue
    #  flash[:error_message] = "we apologize for this error (investments controller new action). please contact 77shares to resolve."
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
    if ((session[:company_id] && (session[:company_id] > 0)) &&
        (session[:entity_id]  && (session[:entity_id]  > 0))   )
      @investment = Investment.new
      @companies = []
      @investment.entity_id = session[:entity_id].to_i
      @investment.company_id = session[:company_id].to_i
      @entity = session[:entity_id].to_i.e
      @company = session[:company_id].to_i.c

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
      flash[:error_message] = "must choose a company. if you do not already have one, please create one before accepting the invitation to link to a portfolio company."
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

  def inv_log_e
    session[:inv] = :log_e
    respond_to do |format|
      format.js
    end
  end

  def inv_sign_e
    session[:inv]= :sign_e
    respond_to do |format|
      format.js
    end
  end
  
  def inv_log_c
    session[:inv] = :log_c
    respond_to do |format|
      format.js
    end
  end

  def inv_sign_c
    session[:inv]= :sign_c
    respond_to do |format|
      format.js
    end
  end
  
  def inv_comp_c
    @entities = [Entity.new(:name => "select one")] + params[:company_id].to_i.c.entities.uniq
  end
  
  def inv_comp_text
    
    # create a new company
    company = Company.new(:name => params[:company_name])
    company.save(:validate => false)
    
    #link the new user to the new company
    king = King.new
    king.company_id = company.id
    king.user_id = session[:user_id].to_i
    king.save(:validate => false)
    
    # entity associated with the invitation
    entity = Entity.new(:name => session[:company_id].to_i.c.name)
    entity.company_id = company.id
    entity.save(:validate => false)
    session[:entity_id] = entity.id
    
    # entity that represents the new company
    entity = Entity.new(:name => company.name)
    entity.company_id = company.id
    entity.save(:validate => false)
    
    # common stock for the new company
    security = Security.new(:name => "common", :kind => 1)
    security.company_id = company.id
    security.save(:validate => false)
    
  end
  
  def inv_submit_e
    session[:company_id] = params[:company_id].to_i
    respond_to do |format|
      format.js
    end
  end
  
  def inv_submit_c
    session[:entity_id] = params[:entity_id].to_i
    respond_to do |format|
      format.js
    end
  end

  def cont 
    case session[:inv]
      when :log_e
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
      when :sign_e
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
      when :log_c
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
      when :sign_c
        # create new user account
        user = User.new
        user.email = params[:email]
        user.login = params[:password]
        user.save(:validate => false)
        session[:user_id] = user.id.to_i
      else
        redirect_to :error
    end
    respond_to do |format|
      format.js {
        case session[:inv]
          when :log_e
            render "log_e"
          when :sign_e
            render "sign_e"
          when :log_c
            render "log_c"
          when :sign_c
            render "sign_c"
          else
            redirect_to :error
        end
      }
    end
  end
end