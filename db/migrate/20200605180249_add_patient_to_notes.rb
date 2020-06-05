class AddPatientToNotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :patient
  end
end
