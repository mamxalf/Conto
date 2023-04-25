class CreateBodyRouters < ActiveRecord::Migration[7.0]
  def change
    create_table :body_routers, id: :uuid do |t|
      t.references :router, null: false, foreign_key: true, type: :uuid
      t.string :field
      t.string :type
      t.text :message
      t.boolean :is_optional
      t.jsonb :extra

      t.timestamps
    end
  end
end
