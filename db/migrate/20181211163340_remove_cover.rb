class RemoveCover < ActiveRecord::Migration[5.2]
  def down
    remove_column :experiences, :cover, :string
  end

  def up
    add_column :experiences, :company, :string
    add_column :experiences, :intro, :text
  end
end
