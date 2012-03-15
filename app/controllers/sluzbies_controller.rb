class SluzbiesController < ApplicationController
  # GET /sluzbies
  # GET /sluzbies.json
  def index
    @sluzbies = Sluzby.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sluzbies }
    end
  end

  # GET /sluzbies/1
  # GET /sluzbies/1.json
  def show
    @sluzby = Sluzby.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sluzby }
    end
  end

  # GET /sluzbies/new
  # GET /sluzbies/new.json
  def new
    @sluzby = Sluzby.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sluzby }
    end
  end

  # GET /sluzbies/1/edit
  def edit
    @sluzby = Sluzby.find(params[:id])
  end

  # POST /sluzbies
  # POST /sluzbies.json
  def create
    @sluzby = Sluzby.new(params[:sluzby])

    respond_to do |format|
      if @sluzby.save
        format.html { redirect_to @sluzby, notice: 'Sluzby was successfully created.' }
        format.json { render json: @sluzby, status: :created, location: @sluzby }
      else
        format.html { render action: "new" }
        format.json { render json: @sluzby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sluzbies/1
  # PUT /sluzbies/1.json
  def update
    @sluzby = Sluzby.find(params[:id])

    respond_to do |format|
      if @sluzby.update_attributes(params[:sluzby])
        format.html { redirect_to @sluzby, notice: 'Sluzby was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sluzby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sluzbies/1
  # DELETE /sluzbies/1.json
  def destroy
    @sluzby = Sluzby.find(params[:id])
    @sluzby.destroy

    respond_to do |format|
      format.html { redirect_to sluzbies_url }
      format.json { head :no_content }
    end
  end
end
