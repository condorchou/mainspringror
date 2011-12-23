# Bitsonthrun configuration
botr_config = YAML::load(File.open('config/bits_on_the_run.yml'))[Rails.env.to_s]

BitsOnTheRun.key = botr_config['key']
BitsOnTheRun.secret = botr_config['secret']

