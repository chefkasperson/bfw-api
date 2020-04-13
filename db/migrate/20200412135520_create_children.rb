class CreateChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :children do |t|
      t.belongs_to :user
      t.string :name
      t.string :gender
      t.datetime :birthday

      t.timestamps
    end
  
  end
end
