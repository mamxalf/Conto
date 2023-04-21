class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations, id: :uuid do |t|
      t.string :name, null: false
      t.string :email, null: false, unique: true
      t.string :phone, null: false, unique: true
      t.text :address
      t.jsonb :settings

      t.timestamps
    end
  end
end
