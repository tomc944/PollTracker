class FixColumnNames < ActiveRecord::Migration
  def change

    rename_column :answer_choices, :options, :text
    rename_column :polls, :user_id, :author_id
    rename_column :responses, :user_id, :respondent_id

  end
end
