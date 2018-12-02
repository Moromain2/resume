class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :home
      t.string :experience
      t.string :education
      t.string :projects
      t.string :skills
      t.string :approach
      t.string :contact

      t.timestamps
    end
  end
end
