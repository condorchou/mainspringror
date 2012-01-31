desc 'Have cron index the Sphinx search indices'
task :cron => 'fs:index' do
  # Other things to do when Cron comes calling
end

