class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string :body
      t.string :url
      t.string :notes
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
