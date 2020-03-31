class CreateMemes < ActiveRecord::Migration[6.0]
  def change
    create_table :memes do |t|
      t.bigint :stack_id
      t.integer :mark
      t.string :title

      t.timestamps
    end
  end
end
