class CreateSavedarticles < ActiveRecord::Migration[6.1]
  def change
    create_table :saved_articles do |t|
      t.integer :article_id
      t.integer :user_id
    end
  end
end
