class BacklogentriesController < ApplicationController
  # GET /backlogentries
  # GET /backlogentries.json
  def index
    @backlogentries = Backlogentry.find_all_by_project_id(params[:schema_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @backlogentries }
    end
  end

  # GET /backlogentries/1
  # GET /backlogentries/1.json
  def show
    @backlogentry = Backlogentry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @backlogentry }
    end
  end

  # GET /backlogentries/new
  # GET /backlogentries/new.json
  def new
    @backlogentry = Backlogentry.new
    @backlogentry.project_id = params[:project_id]
    @project = Project.find(params[:project_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: [@project,@backlogentry] }
    end
  end

  # GET /backlogentries/1/edit
  def edit
    @backlogentry = Backlogentry.find(params[:id])
    @project = Project.find(@backlogentry.project_id)
  end

  # POST /backlogentries
  # POST /backlogentries.json
  def create
    @backlogentry = Backlogentry.new(params[:backlogentry])

    respond_to do |format|
      if @backlogentry.save
        format.html { redirect_to @backlogentry, notice: 'Backlogentry was successfully created.' }
        format.json { render json: @backlogentry, status: :created, location: @backlogentry }
      else
        format.html { render action: "new" }
        format.json { render json: @backlogentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /backlogentries/1
  # PUT /backlogentries/1.json
  def update
    @backlogentry = Backlogentry.find(params[:id])

    respond_to do |format|
      if @backlogentry.update_attributes(params[:backlogentry])
        format.html { redirect_to @backlogentry, notice: 'Backlogentry was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @backlogentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backlogentries/1
  # DELETE /backlogentries/1.json
  def destroy
    @backlogentry = Backlogentry.find(params[:id])
    @backlogentry.destroy

    respond_to do |format|
      format.html { redirect_to backlogentries_url }
      format.json { head :ok }
    end
  end
end
