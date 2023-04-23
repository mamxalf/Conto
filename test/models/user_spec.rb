# frozen_string_literal: true

# spec/models/user_spec.rb

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:model_organization) { create :organization }
  it 'is valid with valid attributes' do
    user = User.new(organization: model_organization, name: 'john', email: 'john@example.com', password: 'password')
    expect(user).to be_valid
  end

  it 'is not valid without a username' do
    user = User.new(email: 'john@example.com', password: 'password')
    expect(user).to_not be_valid
  end
end
