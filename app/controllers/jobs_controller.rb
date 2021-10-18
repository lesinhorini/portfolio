class JobsController < ApplicationController

    def index
        @jobs_items = Job.all
    end

end
