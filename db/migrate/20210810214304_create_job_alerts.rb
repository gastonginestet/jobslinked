class CreateJobAlerts < ActiveRecord::Migration[6.1]
  def change
    create_table :job_alerts do |t|
      t.string :title
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
