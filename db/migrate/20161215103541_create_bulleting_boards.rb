class CreateBulletingBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :bulleting_boards do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
