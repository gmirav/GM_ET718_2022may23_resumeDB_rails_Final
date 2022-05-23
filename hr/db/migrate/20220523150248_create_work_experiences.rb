class CreateWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :work_experiences do |t|
      t.string :role_and_website
      t.string :start_to_finish
      t.string :description
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
