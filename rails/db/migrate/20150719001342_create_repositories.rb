class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.string :url
      t.string :host
      t.boolean :private

      t.timestamps null: false
    end
  end
end
