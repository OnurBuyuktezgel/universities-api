class CreateUniversities < ActiveRecord::Migration[6.0]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :url
      t.string :country
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
