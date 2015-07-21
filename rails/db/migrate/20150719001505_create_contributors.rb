class CreateContributors < ActiveRecord::Migration
  def change
    create_table :contributors do |t|
      t.boolean :owner
      t.boolean :editor

      t.timestamps null: false
    end
  end
end
