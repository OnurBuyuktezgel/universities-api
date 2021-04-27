class AddContactInfoToUniversities < ActiveRecord::Migration[6.0]
  def change
    add_column :universities, :facebook, :string
    add_column :universities, :twitter, :string
    add_column :universities, :instagram, :string
    add_column :universities, :linkedin, :string
    add_column :universities, :phone, :string
    add_column :universities, :umultirank, :string
  end
end
