module Hdi
  module WaysOfWorking
    module Linter
      # This generator add the MADR files to the doc/decisions folder
      class InstallGenerator < Rails::Generators::Base
        source_root File.expand_path("templates", __dir__)

        # TODO: copy_rubocop_github_workflow_action

        def copy_megalinter_github_workflow_action
          copy_file '.github/workflows/mega-linter.yml'
        end

        def copy_megalinter_dot_file
          copy_file '.mega-linter.yml'
        end

        def copy_prettierignore_dot_file
          copy_file '.prettierignore'
        end

        def copy_yamllint_dot_file
          copy_file '.yamllint.yml'
        end

        def create_gitignore_if_missing
          create_file_if_missing '.gitignore'
        end

        def gitignore_reports_folder
          append_to_file '.gitignore', "megalinter-reports/\n"
        end

        def gitignore_rubocop_cached_file
          append_to_file '.gitignore', ".rubocop-https---raw-githubusercontent-com-NHSDigital-ndr-dev-support-v6-1-9-config-rubocop-ndr-yml\n"
        end

        private

        def create_file_if_missing(path)
          path = File.join(destination_root, path)
          return if behavior == :revoke || File.exist?(path)

          File.open(path, 'w') { |file| file.write }
        end
      end
    end
  end
end
