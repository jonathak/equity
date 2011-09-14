class RequestsController < ApplicationController
  # GET /requests
  # GET /requests.xml
  def index
    session[:user_id] == 1 ? @requests = Request.all : @requests = []

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @requests }
    end
  end

  # GET /requests/1
  # GET /requests/1.xml
  def show
    @request = Request.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @request }
    end
  end

  # GET /requests/new
  # GET /requests/new.xml
  def new
    @request = Request.new
    session[:entity_id] = params[:entity_id].to_i

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @request }
    end
  end

  # GET /requests/1/edit
  def edit
    @request = Request.find(params[:id])
  end

  # POST /requests
  # POST /requests.xml
  def create
    @request = Request.new(params[:request])
    if session[:entity_id].to_i > 0    
      @request.entity_id = session[:entity_id].to_i

      respond_to do |format|
        if @request.save
          UserMailer.request_email(@request).deliver
          format.html { redirect_to(@request, :notice => 'Request was successfully created.') }
          format.xml  { render :xml => @request, :status => :created, :location => @request }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @request.errors, :status => :unprocessable_entity }
        end
      end
    else
      flash[:error_message] = "you must have active entity session."
      redirect_to :error
    end
  end

  # PUT /requests/1
  # PUT /requests/1.xml
  def update
    @request = Request.find(params[:id])

    respond_to do |format|
      if @request.update_attributes(params[:request])
        format.html { redirect_to(@request, :notice => 'Request was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.xml
  def destroy
    @request = Request.find(params[:id])
    @request.destroy

    respond_to do |format|
      format.html { redirect_to(requests_url) }
      format.xml  { head :ok }
    end
  end
end
