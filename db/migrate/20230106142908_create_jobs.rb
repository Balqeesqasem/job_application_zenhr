class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :job_title, null: false
      t.integer :job_type, null: false, default: 0 
      t.string :company_name, null: false
      t.text :job_description, null: false

      t.timestamps
    end
  end
end
