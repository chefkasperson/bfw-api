class CreateChildWords < ActiveRecord::Migration[6.0]
  def change
    create_table :child_words do |t|
      t.belongs_to :child, null: false, foreign_key: true
      t.belongs_to :word, null: false, foreign_key: true

      t.timestamps
    end
  end
end
