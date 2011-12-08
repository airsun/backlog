class IssuetypesController < ApplicationController
  # GET /issuetypes
  # GET /issuetypes.json
  def index
    @issuetypes = Issuetype.find_all_by_schema_id(params[:schema_id])

    respond_to do |format|
      format.html {redirect_to schema_issuetype_url}
      format.json { render json: @issuetypes }
    end
  end

  # GET /issuetypes/1
  # GET /issuetypes/1.json
  def show
    @issuetype = Issuetype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @issuetype }
    end
  end

  # GET /issuetypes/new
  # GET /issuetypes/new.json
  def new
    @issuetype = Issuetype.new
    @issuetype.schema_id = params[:schema_id]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @issuetype }
    end
  end

  # GET /issuetypes/1/edit
  def edit
    @issuetype = Issuetype.find(params[:id])
  end

  # POST /issuetypes
  # POST /issuetypes.json
  def create
    @issuetype = Issuetype.new(params[:issuetype])
    @issuetype.schema = Schema.find(1)
    respond_to do |format|
      if @issuetype.save
        format.html { redirect_to @issuetype, notice: 'Issuetype was successfully created.' }
        format.json { render json: @issuetype, status: :created, location: @issuetype }
      else
        format.html { render action: "new" }
        format.json { render json: @issuetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /issuetypes/1
  # PUT /issuetypes/1.json
  def update
    @issuetype = Issuetype.find(params[:id])

    respond_to do |format|
      if @issuetype.update_attributes(params[:issuetype])
        format.html { redirect_to @issuetype, notice: 'Issuetype was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @issuetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issuetypes/1
  # DELETE /issuetypes/1.json
  def destroy
    @issuetype = Issuetype.find(params[:id])
    @issuetype.destroy

    respond_to do |format|
      format.html { redirect_to issuetypes_url }
      format.json { head :ok }
    end
  end
end
