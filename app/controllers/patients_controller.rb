class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
  end

  def create
    @patient = Patient.new(patient_params)

    @patient.save
    redirect_to @patient
  end

  private
    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :dob)
    end
end
