class CreateRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :rounds do |t|
      t.string :computer_move
      t.string :player_move
      t.string :outcome

      t.timestamps
    end
  end
end
