class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :title
      t.string :email
      t.integer :phone
      t.string :source
      t.belongs_to :job

      t.timestamps
    end
  end
end
