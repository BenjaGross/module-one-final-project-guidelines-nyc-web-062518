class CreateBattlefields < ActiveRecord::Migration[5.0]
  def change
    create_table :battlefields do |t|
      t.integer :player_id
      t.integer :enemy_id
    end
  end
end
