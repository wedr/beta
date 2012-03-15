class CreateSluzbies < ActiveRecord::Migration
  def change
    create_table :sluzbies do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
