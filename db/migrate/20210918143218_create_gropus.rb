class CreateGropus < ActiveRecord::Migration[6.0]
  def change
    create_table :gropus do |t|
      t.string :group_name, null: false
      t.references :user,   foreign_key: true
      t.timestamps
    end
  end
end
