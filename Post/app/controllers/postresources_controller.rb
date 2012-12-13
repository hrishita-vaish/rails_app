class PostresourcesController < ApplicationController
  # GET /postresources
  # GET /postresources.json
  def index
    @postresources = Postresource.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @postresources }
    end
  end

  # GET /postresources/1
  # GET /postresources/1.json
  def show
    @postresource = Postresource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @postresource }
    end
  end

  # GET /postresources/new
  # GET /postresources/new.json
  def new
    @postresource = Postresource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @postresource }
    end
  end

  # GET /postresources/1/edit
  def edit
    @postresource = Postresource.find(params[:id])
  end

  # POST /postresources
  # POST /postresources.json
  def create
    @postresource = Postresource.new(params[:postresource])

    respond_to do |format|
      if @postresource.save
        format.html { redirect_to @postresource, notice: 'Postresource was successfully created.' }
        format.json { render json: @postresource, status: :created, location: @postresource }
      else
        format.html { render action: "new" }
        format.json { render json: @postresource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /postresources/1
  # PUT /postresources/1.json
  def update
    @postresource = Postresource.find(params[:id])

    respond_to do |format|
      if @postresource.update_attributes(params[:postresource])
        format.html { redirect_to @postresource, notice: 'Postresource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @postresource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postresources/1
  # DELETE /postresources/1.json
  def destroy
    @postresource = Postresource.find(params[:id])
    @postresource.destroy

    respond_to do |format|
      format.html { redirect_to postresources_url }
      format.json { head :no_content }
    end
  end
end
