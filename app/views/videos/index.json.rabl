collection @videos 
attributes :id, :title, :botr_video_key
node(:tags) {|vid| vid.tags.collect {|t| t.name}}


