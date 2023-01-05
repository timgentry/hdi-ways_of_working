namespace :hdi do
  namespace :ways_of_working do
    namespace :linter do
      desc "Runs the MegaLinter runner"
      task :run do
        system('npx mega-linter-runner --flavor cupcake')
      end
    end
  end
end
