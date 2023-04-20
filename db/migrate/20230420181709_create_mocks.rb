# frozen_string_literal: true

class CreateMocks < ActiveRecord::Migration[7.0]
  def change
    create_table :mocks do |t|
      t.string :path
      t.string :request_method

      t.timestamps
    end
  end
end
