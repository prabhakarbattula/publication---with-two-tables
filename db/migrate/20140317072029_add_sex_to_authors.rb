class AddSexToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :sex, :string
  end
end
