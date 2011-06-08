botr_config = YAML::load(IO.read(File.join(File.dirname(__FILE__), '../botr_api.yml')))
BOTR = BotrApi.new(botr_config['key'],botr_config['secret'])

