require 'csv'

desc "outputs a migration from csv file, pipe it file and paste it to migration yourself"
task :import_videos_csv => [:environment] do

    file = "5_corvel_videos.csv"
    puts "#migration for #{file}"
    puts "c = Client.create!({:company_name=>'Corvel', :token => 'corvel'})"
    puts "u = User.create!(:email => 'corvel@corvel.com', :username => 'Corvel', :role => 'client_admin',
     :password => 'password', :client_user_id => 'corvel@corvel.com', :client_id => c.id, :location => 'Los Angeles, CA')"
    
    count = 0
    header = []
    CSV.foreach(file) do |row|
      if count == 0
        header = row
      else
        hash = {}
        header.each_with_index do |key, index|
          hash[key] = row[index]
        end

        ['client_id', 'user_id', 'banner_link_override','comments_digest','handle','rating_avg','rating_total','thumbnail_id','url','related_links'].each do |unused_key|
          hash.delete(unused_key)
        end
        unless ((episode = hash.delete('episode')).blank?) 
          hash['cached_tag_list'] = (hash['cached_tag_list'].split(',') << "Episode #{episode}").join(',')
        end
        unless ((season = hash.delete('season')).blank?) 
          hash['cached_tag_list'] = (hash['cached_tag_list'].split(',') << "Season #{season}").join(',')
        end

        unless ((label = hash.delete('label')).blank?) 
          hash['cached_tag_list'] = (hash['cached_tag_list'].split(',') << label).join(',')
        end

        unless ((long_desc = hash.delete('long_description')).blank?) 
          hash['description'] += "  #{long_desc}"
        end

        hash['likes_count'] = hash.delete('rating_count')
        
      # use row here...
        puts "v = c.videos.create(#{hash.inspect})"
        puts "v.user_id = u.id"
        puts "v.save!"
      end
      count+=1
    end
    
end

task :import_users_csv => [:environment] do
#client_id,created_at,id,location,updated_at,username
  puts "client = Client.find_by_handle('corvel')"
  CSV.foreach("5_corvel_users.csv") do |row|
    hash = {:location => row[3], :username => row[5]}
    hash[:client_user_id] = row[5].downcase.gsub(/[^a-z0-9\.\-\'\(\)]/,'_')
    puts "client.users.create(#{hash.inspect})"
  end

end

task :import_comments_csv => [:environment] do
#video_id,user_id,body
  client = Client.find_by_handle('corvel')
  CSV.foreach("5_corvel_comments.csv") do |row|
    begin
      puts "begin"
      puts "  row = #{row.inspect}"
      puts "  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}"
      puts "  Comment.create(hash)"
      puts "rescue"
      puts "end"
    rescue => e
    end
  end

end

task :import_ratings_csv => [:environment] do
#user_id,video_id
  client = Client.find_by_handle('corvel')
  CSV.foreach("5_corvel_ratings.csv") do |row|
    begin
      puts "begin"
      puts "  row = #{row.inspect}"
      puts "  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}"
      puts "  Like.create(hash)"
      puts "rescue"
      puts "end"
    rescue => e
    end
  end

end
