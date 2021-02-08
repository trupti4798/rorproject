class CareersController < ApplicationController

    def list
        @careers = Career.all
    end


	def new
		@career = Career.new
    end

    
    def add
        @career=Career.new(career_params)
        if @career.save
            redirect_to(action:'list')
        else
            flash[:notice]= "Error:Record is not created"
            render(action:'new')
        end
    end

	
    def career_params
      params.require(:careers).permit(:name, :dept, :experience, :skills, :qualification, :mobile_no, :email, :address)
    end


end

 

       