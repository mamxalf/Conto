# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Users::UseCases::GetListUser, type: :use_case do
  let(:model_organization) { create :organization }

  before do
    create_list(:user, 100, organization: model_organization)
  end
  it 'should be true when get list user' do
    pagy, users = described_class.new(params: {}, organization_id: model_organization.id).call
    expect(pagy.vars).to include(count: 100, page: 1, items: 10)
    expect(users.first.organization).to eq(model_organization)
  end
end
