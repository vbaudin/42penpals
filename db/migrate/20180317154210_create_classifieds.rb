class CreateClassifieds < ActiveRecord::Migration[5.1]
  def change
    create_table :classifieds do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
