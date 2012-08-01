class DestroyWeights < ActiveRecord::Migration
  def up
    drop_table :weights
  end

  def down
    create_table :weights
  end
end
