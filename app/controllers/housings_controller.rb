class HousingsController < ApplicationController
  # GET /housings
  # GET /housings.json
  def index
    @housings = Housing.all

    @rooms = Housing.rodinites

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @housings }
    end
  end

  # GET /housings/1
  # GET /housings/1.json
  def show
    @housing = Housing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @housing }
    end
  end

  # GET /housings/new
  # GET /housings/new.json
  def new
    @housing = Housing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @housing }
    end
  end

  # GET /housings/1/edit
  def edit
    @housing = Housing.find(params[:id])
  end

  # POST /housings
  # POST /housings.json
  def create
    @housing = Housing.new(params[:housing])

    respond_to do |format|
      if @housing.save
        format.html { redirect_to @housing, notice: 'Housing was successfully created.' }
        format.json { render json: @housing, status: :created, location: @housing }
      else
        format.html { render action: "new" }
        format.json { render json: @housing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /housings/1
  # PUT /housings/1.json
  def update
    @housing = Housing.find(params[:id])

    respond_to do |format|
      if @housing.update_attributes(params[:housing])
        format.html { redirect_to @housing, notice: 'Housing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @housing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housings/1
  # DELETE /housings/1.json
  def destroy
    @housing = Housing.find(params[:id])
    @housing.destroy

    respond_to do |format|
      format.html { redirect_to housings_url }
      format.json { head :no_content }
    end
  end
end
