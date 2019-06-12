class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :name
      t.integer :rating
      t.string :membership_type

      t.timestamps
    end
  end
end
