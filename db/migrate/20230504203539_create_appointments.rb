class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.references :doctor, null: false, index: true
      t.references :patient, null: false, index: true
      t.references :city, null: false, index: true

      t.timestamps
    end
  end
end
