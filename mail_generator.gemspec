# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mail_generator/version"

Gem::Specification.new do |s|
  s.name        = "mail_generator"
  s.version     = MailGenerator::VERSION
  s.authors     = ["Adam Howard"]
  s.email       = ["adz@skatty.me"]
  s.homepage    = "http://skatty.me"
  s.summary     = %q{Compile your mail templates to html/txt files}
  s.description = %q{Compile your mail templates to html/txt files}

  s.rubyforge_project = "mail_generator"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_development_dependency "rspec", "~> 2.0.0.beta.22"
  s.add_dependency "actionmailer"
end
