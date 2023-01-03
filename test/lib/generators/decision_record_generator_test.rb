require "test_helper"
require "generators/decision_record/decision_record_generator"

class DecisionRecordGeneratorTest < Rails::Generators::TestCase
  tests DecisionRecordGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination

  test 'generator runs without errors' do
    assert_nothing_raised do
      run_generator
    end
  end

  test 'files are created and revoked' do
    run_generator

    assert_file 'architecture-decision-record/README.md'
    assert_file 'architecture-decision-record/ADRXXX-architecture-decision-record-template.md'
    assert_file 'architecture-decision-record/ADR000-record-architecture-decisions.md' do |content|
      assert_match("Date: #{Date.today.strftime('%Y-%m-%d')}", content)
    end

    assert_file 'decision-record/README.md'
    assert_file 'decision-record/DRXXX-decision-record-template.md'
    assert_file 'decision-record/DR000-use-github-and-the-adr-process.md' do |content|
      assert_match("Date: #{Date.today.strftime('%Y-%m-%d')}", content)
    end

    run_generator [], behavior: :revoke

    assert_no_file 'architecture-decision-record/README.md'
    assert_no_file 'architecture-decision-record/ADRXXX-architecture-decision-record-template.md'
    assert_no_file 'architecture-decision-record/ADR000-record-architecture-decisions.md'

    assert_no_file 'decision-record/README.md'
    assert_no_file 'decision-record/DRXXX-decision-record-template.md'
    assert_no_file 'decision-record/DR000-use-github-and-the-adr-process.md'
  end
end
