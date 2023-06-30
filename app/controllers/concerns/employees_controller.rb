class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end
  def new 
     @employee =Employee.new
  end
  def create
    @employee=Employee.new(employee_params)
     if @employee.save 
       redirect_to employees_path,notice: 'employee has been succesfull created.....'   
     else
      render :new
     end
  end
   def edit
    @employee=Employee.find(params[:id])
  end
  def update
    @employee=Employee.find(params[:id])
    if @employee.update(employee_params) 
      redirect_to employees_path,notice: 'employee hase benn successful edit'
    else
      render:edit 
    end
   end
   def show 
    @employee=Employee.find(params[:id])
   end 
   def destroy
    @employee=Employee.find(params[:id])
    if @employee.destroy
      redirect_to employees_path,notice: 'Employee has been delete successfully bruh...'
     end 
    end  
private  
  def employee_params
     params.require(:employee).permit(:first_name,:middle_name,:last_name,:personal_email,:city,:state,:country,:pincode,:addres_line_1,:adress_line_2)
  end

end
