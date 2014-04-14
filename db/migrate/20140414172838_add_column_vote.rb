class AddColumnVote < ActiveRecord::Migration
  def change
    rename_column :votes, :answer_id, :response_id
  end
end




