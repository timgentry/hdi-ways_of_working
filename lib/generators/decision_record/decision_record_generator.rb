class DecisionRecordGenerator < Rails::Generators::Base
  source_root File.expand_path("templates", __dir__)

  def create_architecture_decision_record_files
    copy_file 'architecture-decision-record/README.md'
    copy_file 'architecture-decision-record/ADRXXX-architecture-decision-record-template.md'
    template 'architecture-decision-record/ADR000-record-architecture-decisions.md'
  end

  def create_decision_record_files
    copy_file 'decision-record/README.md'
    copy_file 'decision-record/DRXXX-decision-record-template.md'
    template 'decision-record/DR000-use-github-and-the-adr-process.md'
  end
end
