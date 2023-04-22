# frozen_string_literal: true

class CreateRouters < ActiveRecord::Migration[7.0]
  def change
    create_table :routers, id: :uuid do |t|
      t.references :organization, null: false, foreign_key: true, type: :uuid
      t.string :path
      t.string :request_method

      t.timestamps
    end
  end
end
