class NotesController < ApplicationController
  def index
    @patient = Patient.find(params[:patient_id])
    @notes = @patient.notes

  end

  # TO DO:below needs to be fixed
  def show
    # @note = Note.find_by(patient_id: params[:patent_id], id: params[:id])
    @patient = Patient.find(params[:patient_id])
    @note = Note.find(params[:id])
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @note = @patient.notes.create(note_params)

    # TO DO: redirect to all notes for patient?
    @note.save
      redirect_to @patient
  end

  def edit
    @note = Note.find(params[:id])

  end

  def update
    # raise params.inspect
    @note = Note.find(params[:id])
    @note.update(note_params)

    @patient = Patient.find(params[:patient_id])
    @notes = @patient.notes
    redirect_to patient_notes_url(params[:patient_id])
  end

  private
  def note_params
    params.require(:note).permit(:text, :patient_id)
  end

end
