class ShowingsController < ApplicationController
  # GET /showings
  # GET /showings.json
  def index
    @showings = Showing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @showings }
    end
  end

  # GET /showings/1
  # GET /showings/1.json
  def show
    @showing = Showing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @showing }
    end
  end

  # GET /showings/new
  # GET /showings/new.json
  def new
    @showing = Showing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @showing }
    end
  end

  # GET /showings/1/edit
  def edit
    @showing = Showing.find(params[:id])
  end

  # POST /showings
  # POST /showings.json
  def create
    @showing = Showing.new(params[:showing])

    respond_to do |format|
      if @showing.save
        format.html { redirect_to @showing, notice: 'Showing was successfully created.' }
        format.json { render json: @showing, status: :created, location: @showing }
      else
        format.html { render action: "new" }
        format.json { render json: @showing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /showings/1
  # PUT /showings/1.json
  def update
    @showing = Showing.find(params[:id])

    respond_to do |format|
      if @showing.update_attributes(params[:showing])
        format.html { redirect_to @showing, notice: 'Showing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @showing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showings/1
  # DELETE /showings/1.json
  def destroy
    @showing = Showing.find(params[:id])
    @showing.destroy

    respond_to do |format|
      format.html { redirect_to showings_url }
      format.json { head :no_content }
    end
  end
end
