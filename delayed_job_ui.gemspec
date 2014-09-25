Gem::Specification.new do |s|
  s.name = 'delayed_job_ui'
  s.version = '0.0.4'
  s.date = '2014-09-18'
  s.summary = 'A UI wrapper for DelayedJob'
  s.description = s.summary
  s.author =  'Sean Woojin Kim'
  s.email = 'seanwoojinkim@gmail.com'
  s.files = [
    "Gemfile",
    "delayed_job_ui.gemspec",
  ] + %x{ git ls-files }.split("\n").select { |d| d =~ %r{^(lib|app|config)} }
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.homepage = ''
  s.license = 'MIT'

  s.add_dependency 'delayed_job_active_record'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'awesome_print'
end