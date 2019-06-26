class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.integer :salary
      t.string :company
      t.string :position
      t.string :qualifications
      t.string :logo
      t.string :stage
      t.string :position_type
      t.string :job_posting_url
      t.string :company_url
      t.datetime :first_interaction
      t.belongs_to :user

      t.timestamps
    end
  end
end
