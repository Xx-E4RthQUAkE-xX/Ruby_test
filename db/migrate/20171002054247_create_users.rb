class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.belongs_to :user, foreign_key: true, null: false
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
