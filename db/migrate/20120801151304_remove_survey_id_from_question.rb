class RemoveSurveyIdFromQuestion < ActiveRecord::Migration
  def up
    remove_column :questions, :survey_id
  end

  def down
    add_column :questions, :survey_id, :integer
  end
end
