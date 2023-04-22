# frozen_string_literal: true

class PgCrypto < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto'
    enable_extension 'uuid-ossp'
    execute 'CREATE EXTENSION IF NOT EXISTS hstore'
  end
end
