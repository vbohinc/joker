
task :release do
    sh "vim HISTORY.markdown"
    sh "vim README.markdown"
    sh "git commit -a -m 'prerelease adjustments'; true"
end

require 'jeweler'
jeweler_tasks = Jeweler::Tasks.new do |gem|
    gem.name                = 'joker'
    gem.summary             = 'Joker is a simple wildcard implementation that works much like Regexps'
    gem.description         = gem.summary
    gem.email               = 'karottenreibe@gmail.com'
    gem.homepage            = 'http://github.com/karottenreibe/joker'
    gem.authors             = ['Fabian Streitel']
    gem.rubyforge_project   = 'k-gems'

    gem.files.include('lib/joker_native.*') # add native stuff
end

$gemspec = jeweler_tasks.gemspec

Jeweler::RubyforgeTasks.new
Jeweler::GemcutterTasks.new
