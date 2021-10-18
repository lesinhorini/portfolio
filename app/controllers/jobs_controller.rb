class JobsController < ApplicationController
    #before_action :set_job, only: %i[ show edit update destroy ]

    # GET /jobs
    def index
        @jobs_items = Job.all
    end

    # GET /jobs/new
    def new
        @job = Job.new
    end

    # GET /jobs/1/edit
    def edit
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

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_job
            @job = Blog.find(params[:id])
        end
  
        # Only allow a list of trusted parameters through.
        def job_params
            params.require(:job).permit(:title, :subtitle, :body, :main_image, :thumb_image)
        end
end
