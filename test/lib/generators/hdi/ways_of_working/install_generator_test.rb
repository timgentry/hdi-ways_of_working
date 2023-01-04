require "test_helper"
require "generators/hdi/ways_of_working/install/install_generator"

class Hdi::WaysOfWorking::InstallGeneratorTest < Rails::Generators::TestCase
  tests Hdi::WaysOfWorking::InstallGenerator
  destination Rails.root.join("tmp/generators")
  # setup :prepare_destination

  setup do
    prepare_destination

    # We also want a vanilla Rakefile in the destination folder
    FileUtils.copy Rails.root.join('test/resources/vanilla_rails_Rakefile'),
                   destination_root.join('Rakefile')
  end

  test "generator runs without errors" do
    assert_nothing_raised do
      run_generator
    end
  end

  test 'Rakefile is amended and revoked' do
    assert_file 'Rakefile' do |content|
      refute_match("require 'hdi/ways_of_working/tasks' if Rails.env.development? || Rails.env.test?\n", content)
    end

    run_generator

    assert_file 'Rakefile' do |content|
      assert_match("require 'hdi/ways_of_working/tasks' if Rails.env.development? || Rails.env.test?\n", content)
    end

    run_generator [], behavior: :revoke

    assert_file 'Rakefile' do |content|
      refute_match("require 'hdi/ways_of_working/tasks' if Rails.env.development? || Rails.env.test?\n", content)
    end
  end
end
