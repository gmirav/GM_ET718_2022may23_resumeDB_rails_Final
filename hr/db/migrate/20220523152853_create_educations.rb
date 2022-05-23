class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :institution
      t.string :start_to_finish
      t.string :achievement
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
