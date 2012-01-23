# Bitsonthrun configuration
if Rails.env.to_s == "production"
  BitsOnTheRun.key = ENV['BOTR_KEY']
  BitsOnTheRun.secret = ENV['BOTR_SECRET']
else
  botr_config = YAML::load(File.open('config/bits_on_the_run.yml'))[Rails.env.to_s]

  BitsOnTheRun.key = botr_config['key']
  BitsOnTheRun.secret = botr_config['secret']
end
