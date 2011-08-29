class KingsController < ApplicationController
  # GET /kings
  # GET /kings.xml
  def index
    @kings = King.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kings }
    end
  end

  # GET /kings/1
  # GET /kings/1.xml
  def show
    @king = King.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @king }
    end
  end

  # GET /kings/new
  # GET /kings/new.xml
  def new
    @king = King.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @king }
    end
  end

  # GET /kings/1/edit
  def edit
    @king = King.find(params[:id])
  end

  # POST /kings
  # POST /kings.xml
  def create
    @king = King.new(params[:king])

    respond_to do |format|
      if @king.save
        format.html { redirect_to(@king, :notice => 'King was successfully created.') }
        format.xml  { render :xml => @king, :status => :created, :location => @king }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @king.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kings/1
  # PUT /kings/1.xml
  def update
    @king = King.find(params[:id])

    respond_to do |format|
      if @king.update_attributes(params[:king])
        format.html { redirect_to(@king, :notice => 'King was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @king.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kings/1
  # DELETE /kings/1.xml
  def destroy
    @king = King.find(params[:id])
    @king.destroy

    respond_to do |format|
      format.html { redirect_to(kings_url) }
      format.xml  { head :ok }
    end
  end
end
