class AddSurveyIdToQuestions < ActiveRecord::Migration
  def up
    add_column :questions, :survey_id, :integer
  end

  def down
    remove_column :questions, :survey_id
  end
end
