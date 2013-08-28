class LogosController < ApplicationController
  # GET /logos
  # GET /logos.json
  def index
    @logos = Logo.paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @logos }
    end
  end

  # GET /logos/1
  # GET /logos/1.json
  def show
    @logo = Logo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @logo }
    end
  end

  # GET /logos/new
  # GET /logos/new.json
  def new
    @logo = Logo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @logo }
    end
  end

  # GET /logos/1/edit
  def edit
    @logo = Logo.find(params[:id])
  end

  # POST /logos
  # POST /logos.json
  def create
    @logo = Logo.new(params[:logo])

    respond_to do |format|
      if @logo.save
        format.html { redirect_to @logo, :notice => 'Logo was successfully created.' }
        format.json { render :json => @logo, :status => :created, :location => @logo }
      else
        format.html { render :action => "new" }
        format.json { render :json => @logo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /logos/1
  # PUT /logos/1.json
  def update
    @logo = Logo.find(params[:id])

    respond_to do |format|
      if @logo.update_attributes(params[:logo])
        format.html { redirect_to @logo, :notice => 'Logo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @logo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /logos/1
  # DELETE /logos/1.json
  def destroy
    @logo = Logo.find(params[:id])
    @logo.destroy

    respond_to do |format|
      format.html { redirect_to logos_url }
      format.json { head :no_content }
    end
  end
end
