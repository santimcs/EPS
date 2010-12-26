class EpsController < ApplicationController
  # GET /eps
  # GET /eps.xml
  def index
    @eps = Eps.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @eps }
    end
  end

  # GET /eps/1
  # GET /eps/1.xml
  def show
    @ep = Eps.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ep }
    end
  end

  # GET /eps/new
  # GET /eps/new.xml
  def new
    @ep = Eps.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ep }
    end
  end

  # GET /eps/1/edit
  def edit
    @ep = Eps.find(params[:id])
  end

  # POST /eps
  # POST /eps.xml
  def create
    @ep = Eps.new(params[:ep])

    respond_to do |format|
      if @ep.save
        format.html { redirect_to(@ep, :notice => 'Eps was successfully created.') }
        format.xml  { render :xml => @ep, :status => :created, :location => @ep }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ep.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /eps/1
  # PUT /eps/1.xml
  def update
    @ep = Eps.find(params[:id])

    respond_to do |format|
      if @ep.update_attributes(params[:ep])
        format.html { redirect_to(@ep, :notice => 'Eps was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ep.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /eps/1
  # DELETE /eps/1.xml
  def destroy
    @ep = Eps.find(params[:id])
    @ep.destroy

    respond_to do |format|
      format.html { redirect_to(eps_index_url) }
      format.xml  { head :ok }
    end
  end
end
