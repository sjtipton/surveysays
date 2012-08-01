class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.integer :value
      t.integer :question_id
      t.integer :survey_id

      t.timestamps
    end
  end
end
