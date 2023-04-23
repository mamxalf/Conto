# frozen_string_literal: true

# config/initializers/zeitwerk.rb
Rails.autoloaders.each do |autoloader|
  autoloader.ignore(Dir[Rails.root.join('app', '**', '*{_spec.rb}')])
end
