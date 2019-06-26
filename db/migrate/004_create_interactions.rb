class CreateInteractions < ActiveRecord::Migration[5.2]
  def change
    create_table :interactions do |t|
      t.string :location
      t.string :attendees
      t.string :medium
      t.string :notes
      t.datetime :follow_up
      t.datetime :date
      t.datetime :time
      t.belongs_to :user
      t.belongs_to :contact

      t.timestamps
    end
  end
end
