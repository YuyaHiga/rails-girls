class CreateBulletinBoards1s < ActiveRecord::Migration[5.0]
  def change
    create_table :bulletin_boards1s do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
