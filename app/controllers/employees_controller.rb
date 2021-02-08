class EmployeesController < ApplicationController

	def list
		@employees = Employee.all
	end


	def new
		@employee=Employee.new
	end

    
    def add
    	@employee=Employee.new(employee_params)
    	if @employee.save
    		redirect_to(action:'list')
    	else
    		flash[:notice]= "Error:Record is not created"
    		render(action:'new')
    	end
    end


    def delete
    	@employee=Employee.find(params[:id])
    end

    def destroy
    	employee=Employee.find(params[:id])
    	employee.destroy
    	redirect_to(action: 'list')
    end


    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        if @employee.update(employee_params)
            redirect_to(action: 'list')
        else
            render :edit
        end
    end
    

    def show
        @employee = Employee.find(params[:id])
    end

   

    def employee_params
    	params.require(:employees).permit(:name, :dept, :salary, :email, :mobile_no, :gender, :addr, :image)
    end

end