class AddDisplayAddressToUniversities < ActiveRecord::Migration[6.0]
  def change
    add_column :universities, :display_address, :string
  end
end
