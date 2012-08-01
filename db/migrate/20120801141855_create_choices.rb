class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :content
      t.integer :question_id
      t.boolean :correct

      t.timestamps
    end
  end
end
