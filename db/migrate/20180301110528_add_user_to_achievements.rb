class AddUserToAchievements < ActiveRecord::Migration[5.1]
  def change
    add_reference :achievements, :user, index: true, foreign_key: true
  end
end
