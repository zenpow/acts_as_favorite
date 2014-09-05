require 'rails/generators/base'

module ActsAsFavorite
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    argument :class_name, type: :string, default: "Favorite"
    argument :migration_name, type: :string, default: "CreateFavorites"
    argument :table_name, type: :string, default: "favorites"
    attr_reader :class_nesting_depth

    def generate_model
      template "model.rb", "app/models/#{class_name.underscore}.rb"
      template "migration.rb", "db/migrate/#{Time.now.strftime('%Y%m%d%H%M%S')}_#{migration_name.underscore}.rb"

    end

    def generate_test_files
      template "unit_test.rb", "test/unit/#{class_name.underscore}_test.rb"
      template "fixtures.yml", "test/fixtures/#{class_name.underscore}.yml"
    end
  end
end
