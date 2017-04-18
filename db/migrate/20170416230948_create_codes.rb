class CreateCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :codes do |t|
      t.string :kind
      t.text :title
      t.text :work

      t.timestamps
    end
  end
end
