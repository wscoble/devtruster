class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.string :token
      t.string :url
      t.string :title
      t.string :name

      t.timestamps null: false
    end
  end
end
