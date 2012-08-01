class AddWeightToQuestions < ActiveRecord::Migration
  def up
    add_column :questions, :weight, :integer
  end

  def down
    remove_column :questions, :weight
  end
end
