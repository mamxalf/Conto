FactoryBot.define do
  factory :body_router do
    router { nil }
    field { "MyString" }
    type { "" }
    message { "MyText" }
    is_optional { false }
    extra { "" }
  end
end
