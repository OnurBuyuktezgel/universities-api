class RemoveDisplayAddressFromUniversities < ActiveRecord::Migration[6.0]
  def change
    remove_column :universities, :display_address, :string
  end
end
