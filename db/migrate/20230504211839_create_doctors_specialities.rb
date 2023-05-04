class CreateDoctorsSpecialities < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors_specialities do |t|
      t.references :doctor, null: false, index: true
      t.references :speciality, null: false, index: true
      t.timestamps
    end
  end
end
