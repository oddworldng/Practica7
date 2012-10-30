task :default => :rspec #Rake por defecto

desc "(default) Run tests with --format documentation"
task :rspec do
	sh "rspec -Ilib spec/ppt_spec.rb --format documentation"
end

desc "Run bin/ppt_main.rb"
task :bin do
	sh "rspec -Ilib bin/ppt_main.rb"
end


desc "Run tests with --format documentation"
task :test do
	sh "rspec -Ilib spec/ppt_spec.rb --format documentation"
end

desc "Run tests with format: html"
task :thtml do
	sh "rspec -Ilib spec/ppt_spec.rb --format html"
end
