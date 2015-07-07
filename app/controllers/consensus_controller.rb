class ConsensusController < ApplicationController
  # GET /consensus
  # GET /consensus.json
  def index
    @search = Consensu.search(params[:q])
    @consensus = @search.result
	@search.build_condition
  end
  # GET /consensus
  # GET /consensus.json
  def display
   @search = Consensu.search(params[:q])
    @consensus = @search.result
#    @search.build_condition
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @consensus }
    end
  end
  # GET /consensus/1
  # GET /consensus/1.json
  def show
    @consensu = Consensu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @consensu }
    end
  end

  # GET /consensus/new
  # GET /consensus/new.json
  def new
    @consensu = Consensu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @consensu }
    end
  end

  # GET /consensus/1/edit
  def edit
    @consensu = Consensu.find(params[:id])
  end

  # POST /consensus
  # POST /consensus.json
  def create
    @consensu = Consensu.new(params[:consensu])

    respond_to do |format|
      if @consensu.save
        format.html { redirect_to @consensu, notice: 'Consensu was successfully created.' }
        format.json { render json: @consensu, status: :created, location: @consensu }
      else
        format.html { render action: "new" }
        format.json { render json: @consensu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /consensus/1
  # PUT /consensus/1.json
  def update
    @consensu = Consensu.find(params[:id])

    respond_to do |format|
      if @consensu.update_attributes(params[:consensu])
        format.html { redirect_to @consensu, notice: 'Consensu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @consensu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consensus/1
  # DELETE /consensus/1.json
  def destroy
    @consensu = Consensu.find(params[:id])
    @consensu.destroy

    respond_to do |format|
      format.html { redirect_to consensus_url }
      format.json { head :no_content }
    end
  end
end
