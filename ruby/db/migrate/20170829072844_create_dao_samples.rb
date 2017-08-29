class CreateDaoSamples < ActiveRecord::Migration[5.0]
  def change
    create_table :samples do |t|
      t.string :title, limit: 10
      t.text :body

      t.timestamps
    end
  end
end
