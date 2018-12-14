class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :cover
      t.string :title
      t.string :tag
      t.text :intro
      t.text :body

      t.timestamps
    end
  end
end
