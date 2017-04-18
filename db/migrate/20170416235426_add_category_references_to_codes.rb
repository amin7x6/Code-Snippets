class AddCategoryReferencesToCodes < ActiveRecord::Migration[5.0]
  def change
    add_reference :codes, :category, foreign_key: true
  end
end
