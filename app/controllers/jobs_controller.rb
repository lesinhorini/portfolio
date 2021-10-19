class JobsController < ApplicationController

    # GET /jobs
    def index
        @jobs_items = Job.all.order(id: :desc)
    end

    # GET /jobs/new
    def new
        @job = Job.new
    end

    # GET /jobs/1
    def show
        @job = Job.find(params[:id])
    end

    # GET /jobs/1/edit
    def edit
        @job = Job.find(params[:id])
    end

    # POST /jobs
    def create
        @job = Job.new(job_params)

        respond_to do |format|
            if @job.save
                format.html { redirect_to jobs_path, notice: "Job was successfully created." }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /jobs/1
    def update
        @job = Job.find(params[:id])

        respond_to do |format|
            if @job.update(job_params)
                format.html { redirect_to jobs_path, notice: "Job was successfully updated." }
            else
                format.html { render :edit, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /jobs/1
    def destroy
        @job = Job.find(params[:id])
        @job.destroy

        respond_to do |format|
            format.html { redirect_to jobs_path, notice: "Job was successfully destroyed." }
        end
    end

    private
        # Only allow a list of trusted parameters through.
        def job_params
            params.require(:job).permit(:title, :subtitle, :body, :main_image, :thumb_image)
        end
end
