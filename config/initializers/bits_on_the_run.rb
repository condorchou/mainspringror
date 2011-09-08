botr_config = YAML::load(File.open('config/bits_on_the_run.yml'))
BitsOnTheRun::Initializer.run do |config|
  config.api_key    = botr_config['key']
  config.api_secret = botr_config['secret']
end

