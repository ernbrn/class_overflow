class AddResponderToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :responder, :string
  end
end
