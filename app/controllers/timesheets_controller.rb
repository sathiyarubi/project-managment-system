class TimesheetsController < ApplicationController
  # GET /timesheets
  # GET /timesheets.json

  def index
    @timesheets = Timesheet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @timesheets }
    end
  end

  # GET /timesheets/1
  # GET /timesheets/1.json
  def show


    @timesheet = Timesheet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @timesheet }
    end
  end

  # GET /timesheets/new
  # GET /timesheets/new.json
  def new
#raise "new".inspect
    @timesheet = Timesheet.new
    @timesheet.timesheet_details.build 
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @timesheet }
    end
  end

  # GET /timesheets/1/edit

  def edit
#  raise params[:id].inspect
    @timesheet = Timesheet.find(params[:id])
    @timesheet[:timecount] = @timesheet.timesheet_details.all.count
    #raise @timesheet.inspect

  end

  # POST /timesheets
  # POST /timesheets.json
  def create
    @timesheet = Timesheet.new(params[:timesheet])

      if @timesheet.save
           if params[:commit]=="Save"

               redirect_to  edit_timesheet_path( @timesheet.id)
           else
		@timesheet.status="1"
                @timesheet.save
                render action: "show"  	
           end
      else
        format.html { render action: "new" }
        format.json { render json: @timesheet.errors, status: :unprocessable_entity }
      end

  end

  # PUT /timesheets/1
  # PUT /timesheets/1.json
  def update
    @timesheet = Timesheet.find(params[:id])
    
      if @timesheet.update_attributes(params[:timesheet])
		if params[:commit]=="Save"
                    
		    redirect_to  edit_timesheet_path( @timesheet.id) 
		 else       
            @timesheet.status="1"
            @timesheet.save       
            render action: "show"  		
        end
    end
end
  # DELETE /timesheets/1
  # DELETE /timesheets/1.json
  def destroy
    @timesheet = Timesheet.find(params[:id])
    @timesheet.destroy

    respond_to do |format|
      format.html { redirect_to timesheets_url }
      format.json { head :no_content }
    end
  end

def ajaxtimesheet
      @timesheet = Timesheet.where("week_start_date=?",params[:date])[0]
      if(@timesheet.nil?)
			 render action: 'new', layout: false
      else
            @timesheet[:timecount] = @timesheet.timesheet_details.all.count
			redirect_to  edit_timesheet_path( @timesheet.id) 
      end

end

end
