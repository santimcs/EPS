class EarningPerSharesController < ApplicationController
  # GET /earning_per_shares
  # GET /earning_per_shares.xml



  def index
    @earning_per_shares = EarningPerShare.find(:all, :order => "name, year DESC, quarter DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @earning_per_shares }
    end
  end

  # GET /earning_per_shares/1
  # GET /earning_per_shares/1.xml
  def show
    @earning_per_share = EarningPerShare.find(params[:id], :order => "name, year DESC, quarter DESC")

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @earning_per_share }
    end
  end

  # GET /earning_per_shares/new
  # GET /earning_per_shares/new.xml
  def new
    @earning_per_share = EarningPerShare.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @earning_per_share }
    end
  end

  # GET /earning_per_shares/1/edit
  def edit
    @earning_per_share = EarningPerShare.find(params[:id])
  end

  # POST /earning_per_shares
  # POST /earning_per_shares.xml
  def create
    @earning_per_share = EarningPerShare.new(params[:earning_per_share])

    @stock = Stock.find(@earning_per_share.stock_id)
    @earning_per_share.name = @stock.name

    respond_to do |format|
      if @earning_per_share.save
        format.html { redirect_to(@earning_per_share, :notice => 'Earning per share was successfully created.') }
        format.xml  { render :xml => @earning_per_share, :status => :created, :location => @earning_per_share }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @earning_per_share.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /earning_per_shares/1
  # PUT /earning_per_shares/1.xml
  def update
    @earning_per_share = EarningPerShare.find(params[:id])

    respond_to do |format|
      if @earning_per_share.update_attributes(params[:earning_per_share])
        format.html { redirect_to(@earning_per_share, :notice => 'Earning per share was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @earning_per_share.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /earning_per_shares/1
  # DELETE /earning_per_shares/1.xml
  def destroy
    @earning_per_share = EarningPerShare.find(params[:id])
    @earning_per_share.destroy

    respond_to do |format|
      format.html { redirect_to(earning_per_shares_url) }
      format.xml  { head :ok }
    end
  end





end
