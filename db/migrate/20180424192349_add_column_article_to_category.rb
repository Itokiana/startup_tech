class AddColumnArticleToCategory < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :article, :object
  end
end