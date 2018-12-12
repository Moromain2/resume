class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :cover
      t.text :body

      t.timestamps
    end
  end
end
