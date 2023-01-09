class UpdateJobModel < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :expired_at, :datetime
    remove_column :jobs, :job_type, :integer
    remove_column :jobs, :company_name, :string
  end
end
