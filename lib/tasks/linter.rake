namespace :hdi do
  namespace :ways_of_working do
    namespace :linter do
      desc "Runs the MegaLinter runner"
      task :run do
        system('time npx mega-linter-runner --flavor cupcake --remove-container')
      end
    end
  end
end
