class TimesheetDetailsController < ApplicationController
  # GET /timesheet_details
  # GET /timesheet_details.json
  def index
    @timesheet_details = TimesheetDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @timesheet_details }
    end
  end

  # GET /timesheet_details/1
  # GET /timesheet_details/1.json
  def show
    @timesheet_detail = TimesheetDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @timesheet_detail }
    end
  end

  # GET /timesheet_details/new
  # GET /timesheet_details/new.json
  def new
    @timesheet_detail = TimesheetDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @timesheet_detail }
    end
  end

  # GET /timesheet_details/1/edit
  def edit
    @timesheet_detail = TimesheetDetail.find(params[:id])
  end

  # POST /timesheet_details
  # POST /timesheet_details.json
  def create
    @timesheet_detail = TimesheetDetail.new(params[:timesheet_detail])
    respond_to do |format|
      if @timesheet_detail.save
        format.html { redirect_to @timesheet_detail, notice: 'Timesheet detail was successfully created.' }
        format.json { render json: @timesheet_detail, status: :created, location: @timesheet_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @timesheet_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /timesheet_details/1
  # PUT /timesheet_details/1.json
  def update
    @timesheet_detail = TimesheetDetail.find(params[:id])

    respond_to do |format|
      if @timesheet_detail.update_attributes(params[:timesheet_detail])
        format.html { redirect_to @timesheet_detail, notice: 'Timesheet detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @timesheet_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timesheet_details/1
  # DELETE /timesheet_details/1.json
  def destroy
    @timesheet_detail = TimesheetDetail.find(params[:id])
    @timesheet_detail.destroy

    respond_to do |format|
      format.html { redirect_to timesheet_details_url }
      format.json { head :no_content }
    end
  end
end
