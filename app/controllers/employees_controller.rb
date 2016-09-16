class EmployeesController < ApplicationController
  before_action :set_employee, only: [:edit, :update, :destroy]
  before_action :set_clients, only: [:new, :create, :edit, :update]

  def index
    @employees = Employee.all

  end

  def new
    @employee = Employee.new

  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to employees_path, notice: 'Employee was successfully created.'
    else
      render :new
    end
  end

  def update
    if @employee.update(employee_params)
      redirect_to employees_path, notice: 'Employee was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @employee.destroy
    redirect_to employees_path, notice: 'Employee was successfully destroyed.'
  end

private

    def set_clients
      @clients = Client.all

    end

    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit(
        :first_name,
        :last_name,
        :born_date,
        :gender,
        :client_id,
        :email
      )
    end

end