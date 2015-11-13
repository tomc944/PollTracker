class FixColumnNamesAgain < ActiveRecord::Migration
  def change

    rename_column :responses, :respondent_id, :user_id
  end
end
