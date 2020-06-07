class NotesController < ApplicationController
  def index
    @patient = Patient.find(params[:patient_id])
    @notes = @patient.notes

  end

  def create
    @patient = Patient.find(params[:patient_id])
    @note = @patient.notes.create(note_params)

    @note.save
      redirect_to @patient
  end

  def edit
    @note = Note.find(params[:id])

  end

  def update
    @note = Note.find(params[:id])
    @note.update(note_params)

    redirect_to patient_notes_url(params[:patient_id])
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    redirect_to patient_notes_url(params[:patient_id])
  end

  private
  def note_params
    params.require(:note).permit(:text, :patient_id)
  end

end
