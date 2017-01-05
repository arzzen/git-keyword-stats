# -*- encoding: utf-8 -*-
# Reference: http://docs.rubygems.org/read/chapter/20

Gem::Specification.new do |s|
   s.name = 'git-keyword-stats'
   s.version = "1.0.4"
   s.date = Time.now.strftime('%Y-%m-%d')

   s.authors = ['James Pearson', 'Lukas Mestan']
   s.email = ['lukas.mestan@gmail.com']

   s.add_dependency 'docopt'
   s.add_dependency 'git'
   s.add_dependency 'terminal-table'

   s.files = %w( LICENSE Rakefile README.md )
   s.files += Dir.glob 'bin/*'

   s.executables = ['git-keyword-stats']
   s.extra_rdoc_files = ['LICENSE', 'README.md']

   s.summary = %q{Gather statistics on keywording in a repo.}
   s.homepage = 'https://github.com/arzzen/git-keyword-stats'
   s.description = s.summary
end
