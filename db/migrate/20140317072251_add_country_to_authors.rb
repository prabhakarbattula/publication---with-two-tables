class AddCountryToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :country, :string
  end
end
