class ImportCorvelVideoData < ActiveRecord::Migration
  def self.up
    Video.reset_column_information
#migration for 5_corvel_videos.csv
c = Client.create!({:company_name=>'Corvel', :token => 'corvel'})
u = User.create!(:email => 'corvel@corvel.com', :username => 'Corvel', :role => 'client_admin',
     :password => 'password', :client_user_id => 'corvel@corvel.com', :client_id => c.id, :location => 'Los Angeles, CA')
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"bjKa5B0O", "cached_tag_list"=>"Corporate,Connected TV", "created_at"=>"Tue Apr 12 21:30:34 UTC 2011", "description"=>"Richard Schweppe shatters the myths of the corporate office in Irvine.", "id"=>"320", "location"=>"Irvine, CA", "participants"=>"The Irvine office", "release_date"=>"2011-05-10", "title"=>"Corporate Office- <br />Myth vs. Reality", "updated_at"=>"Tue Jan 31 00:24:20 UTC 2012", "views"=>"3496", "likes_count"=>"85"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"l9CsuOQ8", "cached_tag_list"=>"Office standards,Connected TV", "created_at"=>"Tue May 03 20:14:50 UTC 2011", "description"=>"The New CorVel Office Standards have been rolled out at the Orange office.  What's different, and how have things changed for the better?", "id"=>"326", "location"=>"Orange, CA", "participants"=>"The Orange office", "release_date"=>"2011-06-12", "title"=>"The New CorVel Office Standards", "updated_at"=>"Tue Jan 31 18:43:26 UTC 2012", "views"=>"2776", "likes_count"=>"31"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"4XfJPR1y", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 20:07:14 UTC 2011", "description"=>"A blooper reel for videos in 2007", "id"=>"345", "location"=>"", "participants"=>"CorVel", "release_date"=>"2007-06-30", "title"=>"Outtakes", "updated_at"=>"Mon Jan 09 03:08:11 UTC 2012", "views"=>"49", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"d8zbX0Dt", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 20:17:54 UTC 2011", "description"=>"A special CorVel News Report", "id"=>"347", "location"=>"", "participants"=>"Richard Schweppe", "release_date"=>"2007-07-01", "title"=>"CNN CorVel's News Network #1", "updated_at"=>"Thu Jan 26 20:45:00 UTC 2012", "views"=>"59", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"yyBsXLMU", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 20:24:08 UTC 2011", "description"=>"A revealing music video from corporate", "id"=>"349", "location"=>"", "participants"=>"Heather Burnham, Gordon Clemons, Kim Leetzow, Richard Schweppe, Dan Starck", "release_date"=>"2007-07-01", "title"=>"CorVel Devotion", "updated_at"=>"Thu Dec 15 16:51:01 UTC 2011", "views"=>"38", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"5VP07nLd", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 20:25:13 UTC 2011", "description"=>"An exclusive with The Suits", "id"=>"350", "location"=>"", "participants"=>"Gordon Clemons, Jamie Hare, Richard Schweppe and Dan Starck", "release_date"=>"2007-07-01", "title"=>"20/40", "updated_at"=>"Tue Dec 20 04:01:07 UTC 2011", "views"=>"25", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"FaPaIY0C", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 20:37:46 UTC 2011", "description"=>"Brandon O'Brien absorbs the real Philadephia", "id"=>"352", "location"=>"", "participants"=>"Laura Davis, Brandon O'Brien and Dan Starck", "release_date"=>"2007-07-01", "title"=>"Philified", "updated_at"=>"Mon Jan 30 19:25:16 UTC 2012", "views"=>"70", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"qFKsJ2uW", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 20:41:25 UTC 2011", "description"=>"The southeast's answer to qualifying new customers", "id"=>"354", "location"=>"", "participants"=>"Linda Bass, Michael Smith and Mary Walters", "release_date"=>"2007-07-01", "title"=>"Start Spreadin' the News", "updated_at"=>"Thu Jan 26 19:26:15 UTC 2012", "views"=>"82", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"rNtZ7fzG", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 20:46:09 UTC 2011", "description"=>"Gordon King asks the important questions and takes your calls", "id"=>"356", "location"=>"", "participants"=>"Gordon Clemons and Dan Starck", "release_date"=>"2007-07-01", "title"=>"Gordon King Live", "updated_at"=>"Wed Jan 04 23:59:38 UTC 2012", "views"=>"51", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"HCnIi1XC", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 20:50:27 UTC 2011", "description"=>"Paul's spirits brighten with CorVel", "id"=>"358", "location"=>"", "participants"=>"Richard Schweppe", "release_date"=>"2007-07-01", "title"=>"Irritable Paul", "updated_at"=>"Thu Jan 26 22:13:56 UTC 2012", "views"=>"41", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Am7Qk5Yx", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 20:55:39 UTC 2011", "description"=>"The southern midwest Revenue Rockers music video", "id"=>"360", "location"=>"", "participants"=>"Melissa Giarratano and Doug Homa", "release_date"=>"2007-07-01", "title"=>"Getting the Business", "updated_at"=>"Thu Dec 15 17:46:57 UTC 2011", "views"=>"23", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"c17ZpwKu", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 21:00:16 UTC 2011", "description"=>"The new ad has account executives fuming", "id"=>"362", "location"=>"", "participants"=>"Richard Schweppe, Scott Sexton", "release_date"=>"2007-07-01", "title"=>"So Easy, an Account Executive Could Do It", "updated_at"=>"Tue Jan 10 23:29:00 UTC 2012", "views"=>"24", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"QGChJyRa", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 21:04:50 UTC 2011", "description"=>"What really matters in overhead?", "id"=>"364", "location"=>"", "participants"=>"Gordon Clemons", "release_date"=>"2007-07-01", "title"=>"Priceless:  Enthusiastic CEO", "updated_at"=>"Thu Jan 26 19:07:05 UTC 2012", "views"=>"48", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"airtTlxB", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 21:08:17 UTC 2011", "description"=>"The western region shows how to close a deal", "id"=>"366", "location"=>"", "participants"=>"Michael Combs, Greg Dorn, Claudia Kettrick, Scott McCloud, Don McFarlane and Lauren Ott", "release_date"=>"2007-07-01", "title"=>"Deal or No Deal", "updated_at"=>"Fri Jan 27 21:59:07 UTC 2012", "views"=>"179", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"bZbyC7y0", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 21:12:33 UTC 2011", "description"=>"More breaking stories", "id"=>"368", "location"=>"", "participants"=>"Richard Schweppe", "release_date"=>"2007-07-01", "title"=>"CNN: CorVel's New Network #2", "updated_at"=>"Wed Dec 28 17:55:10 UTC 2011", "views"=>"18", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"CgTt02ER", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 21:16:55 UTC 2011", "description"=>"Do you suffer from BDD?  eRoster can help.", "id"=>"370", "location"=>"", "participants"=>"Trevor Gill, Richard Schweppe", "release_date"=>"2007-07-01", "title"=>"Bill Review Dysfunstion Disorder", "updated_at"=>"Thu Dec 29 20:06:42 UTC 2011", "views"=>"26", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"D6AHvGlg", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 21:21:11 UTC 2011", "description"=>"Golf:  there's always room for one more", "id"=>"372", "location"=>"", "participants"=>"Gordon Clemons, Kim Leetzow and Richard Schweppe", "release_date"=>"2007-07-01", "title"=>"He Has an Axe", "updated_at"=>"Thu Jan 26 19:27:59 UTC 2012", "views"=>"44", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"m3W8NdaZ", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 21:24:19 UTC 2011", "description"=>"The upper midwest gives their take on professionalism", "id"=>"374", "location"=>"", "participants"=>"Diane Blaha, Mike Donnelly, Jayna Dunning and Scott Sexton", "release_date"=>"2007-07-01", "title"=>"CorVel's Sharp Ones", "updated_at"=>"Thu Jan 26 19:10:37 UTC 2012", "views"=>"32", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"zemEoZc2", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 21:28:30 UTC 2011", "description"=>"Gordon Rooney ruminates on the Breaker Hotel", "id"=>"376", "location"=>"", "participants"=>"Gordon Clemons", "release_date"=>"2007-07-01", "title"=>"Gordon Rooney", "updated_at"=>"Tue Jan 10 20:54:32 UTC 2012", "views"=>"39", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"GU0ZvObH", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 21:32:25 UTC 2011", "description"=>"The presentation isn't going smoothly", "id"=>"378", "location"=>"", "participants"=>"CorVel", "release_date"=>"2007-07-01", "title"=>"Monkey:  Laser Pointer", "updated_at"=>"Tue Jan 10 21:29:39 UTC 2012", "views"=>"31", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"j91RXtKY", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 21:34:41 UTC 2011", "description"=>"It's so easy, even a caveman can do it", "id"=>"380", "location"=>"", "participants"=>"Gordon Clemens", "release_date"=>"2007-07-01", "title"=>"Caveman: Airport", "updated_at"=>"Fri Jan 06 23:53:25 UTC 2012", "views"=>"39", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"tb4R6jyM", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 21:38:39 UTC 2011", "description"=>"The eastern region sings about sales strategy", "id"=>"382", "location"=>"", "participants"=>"Dave Brown, Jim Cavallo, Frank Hackett, Scott Hayden and Kathleen Wilson", "release_date"=>"2007-07-01", "title"=>"Sign with CorVel", "updated_at"=>"Mon Jan 02 23:03:47 UTC 2012", "views"=>"50", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"piqCOSNj", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 21:42:37 UTC 2011", "description"=>"Still more breaking stories", "id"=>"384", "location"=>"", "participants"=>"Richard Schweppe", "release_date"=>"2007-07-01", "title"=>"CNN: CorVel News Network #3", "updated_at"=>"Thu Dec 01 17:37:57 UTC 2011", "views"=>"21", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"LfyHs3xg", "cached_tag_list"=>"CofE 2007,Episode 5,Season 5", "created_at"=>"Fri Jul 01 21:47:31 UTC 2011", "description"=>"Caveman complains about that pesky ad", "id"=>"386", "location"=>"", "participants"=>"Heather Burnham and Gordon Clemons", "release_date"=>"2007-07-01", "title"=>"Caveman:  Psychologist", "updated_at"=>"Mon Jan 09 04:58:05 UTC 2012", "views"=>"32", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"9P1mZvlq", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 21:51:03 UTC 2011", "description"=>"CorVel employees in the competition of a lifetime", "id"=>"387", "location"=>"", "participants"=>"Dan Starck, Gordon Clemons, Richard Schweppe, Heather Burnham and Kim Leetzow", "release_date"=>"2011-05-02", "title"=>"Amazing Race", "updated_at"=>"Wed Jan 18 22:30:18 UTC 2012", "views"=>"75", "likes_count"=>"3"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"SptWpaLy", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 22:00:40 UTC 2011", "description"=>"When Scott McCloud fights a bear, help the bear", "id"=>"389", "location"=>"", "participants"=>"Scott McCloud", "release_date"=>"2011-05-02", "title"=>"Dangerous CFO", "updated_at"=>"Tue Jan 10 22:42:27 UTC 2012", "views"=>"91", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Kem56af5", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 22:05:00 UTC 2011", "description"=>"Doctor Diane helps patients with sales addictions", "id"=>"391", "location"=>"", "participants"=>"Diane Blaha, Charlie Green, Jayna Dunning and Leann Farlander", "release_date"=>"2011-05-02", "title"=>"CorVel Rehab Doctor Diane", "updated_at"=>"Fri Jan 20 23:14:17 UTC 2012", "views"=>"42", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"NpBEKTJ0", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 22:09:51 UTC 2011", "description"=>"He is the life of parties he hasn't even attended", "id"=>"393", "location"=>"", "participants"=>"Gordon Clemons", "release_date"=>"2011-05-02", "title"=>"Most Interesting Chairman", "updated_at"=>"Fri Jan 27 17:57:12 UTC 2012", "views"=>"80", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"BlSS8ZPu", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 22:15:02 UTC 2011", "description"=>"Different uses for different folks", "id"=>"395", "location"=>"", "participants"=>"Reka Reichle, Linda Ford, Sally Essmyer, Mary Walters, Sean Snell and Randy Gore", "release_date"=>"2011-05-02", "title"=>"CorVel iPad is...", "updated_at"=>"Thu Jan 26 22:51:34 UTC 2012", "views"=>"93", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"sxHt1GvR", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 22:20:04 UTC 2011", "description"=>"Don't settle for cut rate claims software", "id"=>"397", "location"=>"", "participants"=>"Stosh Jarecki and Brandon O'Brien", "release_date"=>"2011-05-02", "title"=>"Mayhem - Discount Claims Software #1", "updated_at"=>"Wed Dec 28 18:11:25 UTC 2011", "views"=>"27", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Sh5QBIWd", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 22:23:47 UTC 2011", "description"=>"Don't go online with cut rate claims software", "id"=>"399", "location"=>"", "participants"=>"Stoch Jarecki and Jay Lichtman", "release_date"=>"2011-05-02", "title"=>"Mayhem - Discount Claims Software #2", "updated_at"=>"Thu Jan 26 16:24:29 UTC 2012", "views"=>"60", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"nOCxGL1j", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 22:29:41 UTC 2011", "description"=>"This meeting was over before it started", "id"=>"401", "location"=>"", "participants"=>"Dan Starck, Mary Walters, Michael Saverien, Mike Donnelly, Scott Hayden and Kevin Helms", "release_date"=>"2011-05-02", "title"=>"CorVel RVPs:  They Cut to the Chase", "updated_at"=>"Sat Jan 28 03:39:56 UTC 2012", "views"=>"80", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"sTxLSWEp", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 22:34:19 UTC 2011", "description"=>"Better than the Real Housewives", "id"=>"403", "location"=>"", "participants"=>"Tara Kerz, Jeff Brock, Ian McDaniel, Joe Barger, Bunny Carter and Matt Engels", "release_date"=>"2011-05-02", "title"=>"Real Managers of CorVel", "updated_at"=>"Tue Jan 31 20:36:56 UTC 2012", "views"=>"223", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"QEDAOjyh", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 22:37:59 UTC 2011", "description"=>"CorVel's Real Men of Genius", "id"=>"405", "location"=>"", "participants"=>"RJ Tompkins and Derek Carney", "release_date"=>"2011-05-02", "title"=>"Mr. SPF 80 Sunblock Wearer", "updated_at"=>"Mon Jan 30 01:43:21 UTC 2012", "views"=>"109", "likes_count"=>"4"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"BtrYOb6T", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 22:43:08 UTC 2011", "description"=>"Ian McDaniel chases after an email", "id"=>"407", "location"=>"", "participants"=>"Ian McDaniel and Matt Engels", "release_date"=>"2011-05-02", "title"=>"Reply All", "updated_at"=>"Mon Jan 30 21:42:29 UTC 2012", "views"=>"86", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"kHOcvtST", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 22:46:44 UTC 2011", "description"=>"Richard Schweppe tells it like it is", "id"=>"409", "location"=>"", "participants"=>"Richard Schweppe", "release_date"=>"2011-05-02", "title"=>"Schweppe rants about CorVel", "updated_at"=>"Thu Jan 26 19:11:43 UTC 2012", "views"=>"46", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"xqLd2478", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 22:50:14 UTC 2011", "description"=>"A day in the life of the competition", "id"=>"411", "location"=>"", "participants"=>"Scott Sexton", "release_date"=>"2011-05-02", "title"=>"CorVel Competitor - Limo, Yacht and Tennis", "updated_at"=>"Thu Jan 26 19:23:27 UTC 2012", "views"=>"47", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"4ytF9wEK", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 22:54:54 UTC 2011", "description"=>"Gordon needs to stay connected", "id"=>"413", "location"=>"", "participants"=>"Gordon Clemons, Melissa Giarratano, Greg Dorn, Doug Tierney, Debra Dambacher and RJ Tompkins", "release_date"=>"2011-05-02", "title"=>"Taco Party", "updated_at"=>"Tue Jan 31 20:58:13 UTC 2012", "views"=>"88", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"hUBrk5PT", "cached_tag_list"=>"CofE 2011,Episode 9,Season 9", "created_at"=>"Fri Jul 01 22:59:23 UTC 2011", "description"=>"How does your appearance describe you?", "id"=>"415", "location"=>"", "participants"=>"Sally Essmyer and Charlie Sears", "release_date"=>"2011-05-02", "title"=>"Talking Stain", "updated_at"=>"Fri Dec 23 14:56:26 UTC 2011", "views"=>"41", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"rexprH7Y", "cached_tag_list"=>"CofE,Episode 9,Season 9", "created_at"=>"Fri Jul 01 23:05:15 UTC 2011", "description"=>"Busy? Stay connected with Care MC", "id"=>"417", "location"=>"", "participants"=>"Gregory Stevens", "release_date"=>"2011-05-02", "title"=>"Yes, Yes, Yes", "updated_at"=>"Thu Dec 29 18:02:15 UTC 2011", "views"=>"62", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"rXFihVNG", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Fri Jul 01 23:12:26 UTC 2011", "description"=>"CorVel > Dunder Mifflin", "id"=>"420", "location"=>"", "participants"=>"Gordon Clemons, Heather Burnham, Cassie Eades, Kim Leetzow, Richard Schweppe, Stephanie Spiropoulos and Dan Starck", "release_date"=>"2010-07-02", "title"=>"The Office", "updated_at"=>"Fri Jan 27 18:47:48 UTC 2012", "views"=>"101", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"jIKh14FN", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Fri Jul 01 23:20:14 UTC 2011", "description"=>"It's not who you are talking to, it's what you are saying", "id"=>"423", "location"=>"", "participants"=>"Nicole Davila, Leann Farlander, Brad Graham, Dan Starck and Gregory Stevens", "release_date"=>"2010-07-02", "title"=>"Enthusiastic Boss", "updated_at"=>"Tue Dec 27 22:40:10 UTC 2011", "views"=>"64", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"kgmcZpzN", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Fri Jul 01 23:22:24 UTC 2011", "description"=>"Now this is a tale of our castaways", "id"=>"425", "location"=>"", "participants"=>"Gordon Clemons, Michael Smith and Dan Starck", "release_date"=>"2010-07-02", "title"=>"Gordon's Island", "updated_at"=>"Mon Jan 30 15:54:36 UTC 2012", "views"=>"105", "likes_count"=>"5"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Oh7wKfI3", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Fri Jul 01 23:25:52 UTC 2011", "description"=>"Tom Benson is legit", "id"=>"427", "location"=>"", "participants"=>"Tom Benson", "release_date"=>"2010-07-02", "title"=>"Rockstar", "updated_at"=>"Fri Jan 06 23:52:22 UTC 2012", "views"=>"64", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"eE9wRgrO", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Fri Jul 01 23:30:46 UTC 2011", "description"=>"Like the office Snuggie, but better", "id"=>"429", "location"=>"", "participants"=>"Gordon Clemons, Kathy Farmand, Trevor Gill, Sharon O'Connor, Dan Starck and Brittany Stone", "release_date"=>"2010-07-02", "title"=>"CorUggie", "updated_at"=>"Tue Jan 31 20:39:34 UTC 2012", "views"=>"71", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"1rHuh2RG", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Fri Jul 01 23:34:44 UTC 2011", "description"=>"Ian McDaniel is busy, thank you very much", "id"=>"431", "location"=>"", "participants"=>"Matt Engels, Kim Leetzow and Ian McDaniel", "release_date"=>"2010-07-02", "title"=>"Overwhelmed", "updated_at"=>"Mon Jan 09 14:53:10 UTC 2012", "views"=>"56", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"ZM17FPCD", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Fri Jul 01 23:44:38 UTC 2011", "description"=>"Some fantasies are within reach", "id"=>"433", "location"=>"", "participants"=>"Mike Donnelly, Melissa Giarratano, Don McFarlane, Bryce Penke and Sarah Scott", "release_date"=>"2010-07-02", "title"=>"Fantasy Island", "updated_at"=>"Tue Jan 31 03:42:56 UTC 2012", "views"=>"59", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"RGiaXmg0", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Fri Jul 01 23:49:57 UTC 2011", "description"=>"Conference calls - proceed with caution", "id"=>"435", "location"=>"", "participants"=>"Heather Burnham and Gordon Clemons", "release_date"=>"2010-07-02", "title"=>"Mute Button", "updated_at"=>"Tue Jan 31 20:37:58 UTC 2012", "views"=>"87", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"yLBZavFk", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Fri Jul 01 23:57:03 UTC 2011", "description"=>"Better than a Carnival cruise", "id"=>"437", "location"=>"", "participants"=>"Dan Starck ", "release_date"=>"2010-07-02", "title"=>"Fun at Circle", "updated_at"=>"Thu Jan 26 20:13:45 UTC 2012", "views"=>"81", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"S5b3EDkO", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Sat Jul 02 00:06:46 UTC 2011", "description"=>"Our jokes aren't like your jokes", "id"=>"439", "location"=>"", "participants"=>"Sally Essmyer, Claudia Kettrick and Dan Starck", "release_date"=>"2010-07-02", "title"=>"Nerd Prank", "updated_at"=>"Tue Jan 10 22:42:33 UTC 2012", "views"=>"61", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"akAhL4Ps", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Sat Jul 02 00:09:56 UTC 2011", "description"=>"CorVel's Real Men of Genius", "id"=>"441", "location"=>"", "participants"=>"Joe Barger, Jim Cavallo, Sally Ferguson and Scott Sexton", "release_date"=>"2010-07-02", "title"=>"Really Really Bad Dancer", "updated_at"=>"Fri Dec 23 21:11:49 UTC 2011", "views"=>"36", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"UA4spY3V", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Sat Jul 02 00:19:18 UTC 2011", "description"=>"Circle is exciting and new!", "id"=>"443", "location"=>"", "participants"=>"Joe Barger, Robyn Blocher, Randy Gore, Tara Kerz, Marca Resse and Richard Schweppe", "release_date"=>"2010-07-02", "title"=>"Love Boat", "updated_at"=>"Thu Jan 05 05:03:37 UTC 2012", "views"=>"44", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"ZC6b9CaM", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Sat Jul 02 00:23:12 UTC 2011", "description"=>"Next time, use CareMC", "id"=>"445", "location"=>"", "participants"=>"Suzanne Caldbeck, Greg Dorn, Jayna Dunning and Brad Graham", "release_date"=>"2010-07-02", "title"=>"Lucky Charm", "updated_at"=>"Wed Jan 18 22:26:22 UTC 2012", "views"=>"29", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"eNMRx2BA", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Sat Jul 02 00:25:33 UTC 2011", "description"=>"Working at CorVel can be a breeze if you have the right app", "id"=>"447", "location"=>"", "participants"=>"Diane Blaha, Deb Campbell, Charlie Green, Michael Saverien and La Donna Williams", "release_date"=>"2010-07-02", "title"=>"App for That", "updated_at"=>"Fri Jan 27 00:28:42 UTC 2012", "views"=>"43", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"nVNtMSU1", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Sat Jul 02 00:29:32 UTC 2011", "description"=>"Dead reps make no sales", "id"=>"449", "location"=>"", "participants"=>"Bunny Carter, Greg Dorn, Brad Graham, Charlie Green, Scott Hayden, Jo North, Scott Sexton and Mark Van Nuland", "release_date"=>"2010-07-02", "title"=>"The Inner Circle Corporate Curse", "updated_at"=>"Fri Jan 27 00:30:35 UTC 2012", "views"=>"30", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"DgN1Q4f1", "cached_tag_list"=>"CofE 2010,Episode 8,Season 8", "created_at"=>"Sat Jul 02 00:32:26 UTC 2011", "description"=>"A blooper reel for videos in 2010", "id"=>"451", "location"=>"", "participants"=>"CorVel", "release_date"=>"2010-07-02", "title"=>"Outtakes", "updated_at"=>"Tue Jan 31 03:37:24 UTC 2012", "views"=>"56", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"KtP9sG0X", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 01:22:31 UTC 2011", "description"=>"Kicking off the start of the 2009 Circle of Excellence", "id"=>"453", "location"=>"", "participants"=>"CorVel", "release_date"=>"2009-07-02", "title"=>"Opening", "updated_at"=>"Mon Jan 09 05:10:09 UTC 2012", "views"=>"29", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"B3RkS1ho", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 01:27:15 UTC 2011", "description"=>"Dan Starck can't take a hint", "id"=>"456", "location"=>"", "participants"=>"Mike Donnelly, Charlie Green, Scott Sexton and Dan Starck", "release_date"=>"2009-07-02", "title"=>"Take a Hike", "updated_at"=>"Thu Jan 26 19:23:24 UTC 2012", "views"=>"41", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"0fOVa74y", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 01:32:47 UTC 2011", "description"=>"Perfect for any wall, door, and promotion", "id"=>"458", "location"=>"", "participants"=>"Gordon Clemons, Heather Burnham, Ryan Richards, Richard Schweppe and Dan Starck", "release_date"=>"2009-07-02", "title"=>"Fathead", "updated_at"=>"Fri Jan 27 21:26:08 UTC 2012", "views"=>"62", "likes_count"=>"3"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"X4U9cFba", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 01:36:29 UTC 2011", "description"=>"The winners of the Corvey for Best Special Effects accept their prize", "id"=>"460", "location"=>"", "participants"=>"CorVel", "release_date"=>"2009-07-02", "title"=>"Best Special Effects", "updated_at"=>"Fri Jan 27 19:31:10 UTC 2012", "views"=>"43", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"fBDzwODN", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 01:39:18 UTC 2011", "description"=>"A glimpse into the schedule of Dan Starck", "id"=>"462", "location"=>"", "participants"=>"Kathryn Gloeckner and Dan Starck", "release_date"=>"2009-07-02", "title"=>"How's My Day Look?", "updated_at"=>"Thu Jan 26 22:51:38 UTC 2012", "views"=>"69", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Y4OpSBqD", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 01:45:02 UTC 2011", "description"=>"Should have asked her name first", "id"=>"464", "location"=>"", "participants"=>"Ed Burtnette, Kevin Helms and Charlie Sears", "release_date"=>"2009-07-02", "title"=>"Wanna Get Away:  Sabrina", "updated_at"=>"Tue Jan 31 20:36:31 UTC 2012", "views"=>"44", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"zVvqy080", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 01:47:54 UTC 2011", "description"=>"The winner of the Corvey for Best Costume accept their prize", "id"=>"466", "location"=>"", "participants"=>"CorVel", "release_date"=>"2009-07-02", "title"=>"Best Costume", "updated_at"=>"Tue Jan 10 21:42:07 UTC 2012", "views"=>"65", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"oYHJOcub", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 01:51:07 UTC 2011", "description"=>"How can we cut costs?", "id"=>"468", "location"=>"", "participants"=>"Heather Burnham, Gordon Clemons, Mike Donnelly, Richard Schweppe, Scott Sexton and Dan Starck", "release_date"=>"2009-07-02", "title"=>"Don't Mess with Circle", "updated_at"=>"Tue Jan 24 21:34:26 UTC 2012", "views"=>"52", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"uwvgV8n1", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 01:53:13 UTC 2011", "description"=>"The winners of the Corvey for Best Song accept their prize", "id"=>"470", "location"=>"", "participants"=>"CorVel", "release_date"=>"2009-07-02", "title"=>"Best Song", "updated_at"=>"Thu Jan 26 19:17:21 UTC 2012", "views"=>"59", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"F5wyUXPp", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 01:56:50 UTC 2011", "description"=>"The winner of the Corvey for Best Breakthrough Performance accepts her award", "id"=>"472", "location"=>"", "participants"=>"CorVel", "release_date"=>"2009-07-02", "title"=>"Best Breakthrough Performance", "updated_at"=>"Fri Jan 27 17:52:14 UTC 2012", "views"=>"21", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"XeB0omdE", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 01:59:38 UTC 2011", "description"=>"Competition is tough this year", "id"=>"474", "location"=>"", "participants"=>"Suzanne Caldbeck, Bunny Carter, Scotty Benton, Melissa Giarratano, David Lupinsky, Michael Saverien and Darren Stahulak", "release_date"=>"2009-07-02", "title"=>"Dancing with the Stars", "updated_at"=>"Thu Jan 26 22:51:28 UTC 2012", "views"=>"93", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"dgCOAO80", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 02:02:25 UTC 2011", "description"=>"Relax, it's just Circle", "id"=>"476", "location"=>"", "participants"=>"Linda Bass and Michael Saverien", "release_date"=>"2009-07-02", "title"=>"Wanna Get Away:  Coconuts", "updated_at"=>"Fri Jan 27 00:29:59 UTC 2012", "views"=>"114", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"yzi30Wqo", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 02:05:00 UTC 2011", "description"=>"When the cat's away...", "id"=>"478", "location"=>"", "participants"=>"Jeanette Mungcal", "release_date"=>"2009-07-02", "title"=>"Golf", "updated_at"=>"Wed Jan 11 20:06:44 UTC 2012", "views"=>"48", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"jqu8hoG3", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 02:06:23 UTC 2011", "description"=>"The winners of the Corvey for Best Choreography accept their prize", "id"=>"480", "location"=>"", "participants"=>"CorVel", "release_date"=>"2009-07-02", "title"=>"Best Choreography", "updated_at"=>"Thu Jan 26 19:12:06 UTC 2012", "views"=>"45", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"dqQBY9WB", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 02:09:39 UTC 2011", "description"=>"The winners of the Corvey for Best Outtakes accept their prize", "id"=>"482", "location"=>"", "participants"=>"CorVel", "release_date"=>"2009-07-02", "title"=>"Best Outtakes", "updated_at"=>"Thu Jan 26 20:42:24 UTC 2012", "views"=>"85", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"9woyQsqU", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 02:11:14 UTC 2011", "description"=>"Comfortable everywhere you wear it", "id"=>"484", "location"=>"", "participants"=>"Scotty Benton, Brian Cronk, Leann Farlander, Brad Graham and Gregory Stevens", "release_date"=>"2009-07-02", "title"=>"Office Snuggie", "updated_at"=>"Fri Jan 27 18:23:24 UTC 2012", "views"=>"62", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"1C5tLsQD", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 02:15:00 UTC 2011", "description"=>"Living with someone who works for CorVel can be a lonely existence", "id"=>"486", "location"=>"", "participants"=>"CorVel", "release_date"=>"2009-07-02", "title"=>"Lonely Guests", "updated_at"=>"Fri Dec 23 01:08:17 UTC 2011", "views"=>"35", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"iYGenS8y", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 02:18:48 UTC 2011", "description"=>"Gordon Clemons, winner of the Corvey for Best Villain, accepts his prize", "id"=>"488", "location"=>"", "participants"=>"CorVel", "release_date"=>"2009-07-02", "title"=>"Best Villain", "updated_at"=>"Thu Jan 26 19:57:18 UTC 2012", "views"=>"26", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"at6Dw26V", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 02:22:20 UTC 2011", "description"=>"The winners of the Corvey for Best Commercial or Short Video accept their prize", "id"=>"490", "location"=>"", "participants"=>"CorVel", "release_date"=>"2009-07-02", "title"=>"Best Commercial or Short Video", "updated_at"=>"Thu Jan 26 19:24:44 UTC 2012", "views"=>"40", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"2pgraPso", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 02:25:43 UTC 2011", "description"=>"A blooper reel for videos in 2009", "id"=>"492", "location"=>"", "participants"=>"CorVel", "release_date"=>"2009-07-02", "title"=>"Outtakes", "updated_at"=>"Thu Jan 05 19:38:19 UTC 2012", "views"=>"47", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"R1ZLJ4B1", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 02:28:51 UTC 2011", "description"=>"A long time ago in an galaxy far, far away...", "id"=>"494", "location"=>"", "participants"=>"Heather Burnham, Gordon Clemons, Gordon Clemons Jr., Claudia Kettrick, Kim Leetzow, Don McFarlane, Richard Schweppe and Dan Starck", "release_date"=>"2008-07-02", "title"=>"CorWars", "updated_at"=>"Fri Jan 27 18:01:33 UTC 2012", "views"=>"48", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"0TQiZtco", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 02:32:27 UTC 2011", "description"=>"CareMC side by side with the competition", "id"=>"496", "location"=>"", "participants"=>"Don McFarlane and Richard Schweppe", "release_date"=>"2008-07-02", "title"=>"CareMC vs. Competitors #1", "updated_at"=>"Fri Jan 27 17:19:02 UTC 2012", "views"=>"53", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"YCWLbnFA", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 02:40:33 UTC 2011", "description"=>"CareMC again side by side with the competition", "id"=>"498", "location"=>"", "participants"=>"Don McFarlane and Richard Schweppe", "release_date"=>"2008-07-02", "title"=>"CareMC vs. Competitors #2", "updated_at"=>"Tue Jan 17 20:30:23 UTC 2012", "views"=>"37", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"kZZeDmIG", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 02:43:13 UTC 2011", "description"=>"CareMC once more side by side with the competition", "id"=>"500", "location"=>"", "participants"=>"Don McFarlane and Richard Schweppe", "release_date"=>"2008-07-02", "title"=>"CareMC vs. Competitors #3", "updated_at"=>"Tue Jan 10 22:43:02 UTC 2012", "views"=>"34", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"IpR74hc3", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 02:48:14 UTC 2011", "description"=>"Use CorVel VOIP", "id"=>"502", "location"=>"", "participants"=>"Heather Burnham ", "release_date"=>"2008-07-02", "title"=>"Dropped Call - Promotion", "updated_at"=>"Fri Jan 27 17:55:26 UTC 2012", "views"=>"34", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"225p5Q7L", "cached_tag_list"=>"CofE 2009,Episode 7,Season 7", "created_at"=>"Sat Jul 02 02:50:34 UTC 2011", "description"=>"Use CorVel VOIP", "id"=>"504", "location"=>"", "participants"=>"Gordon Clemons Jr. and Dan Starck", "release_date"=>"2009-07-02", "title"=>"Dropped Call - Acquisition", "updated_at"=>"Fri Jan 27 17:20:02 UTC 2012", "views"=>"55", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"ycilDM8h", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 02:52:52 UTC 2011", "description"=>"Contact your local field office today", "id"=>"506", "location"=>"", "participants"=>"Corporate Office", "release_date"=>"2008-07-02", "title"=>"Worthless", "updated_at"=>"Fri Jan 27 17:52:56 UTC 2012", "views"=>"62", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"4TDmbQhT", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 02:55:51 UTC 2011", "description"=>"What every effective med check specialist needs", "id"=>"508", "location"=>"", "participants"=>"Claudia Kettrick and Don McFarlane", "release_date"=>"2008-07-02", "title"=>"Desktop Claudia", "updated_at"=>"Fri Jan 27 17:24:12 UTC 2012", "views"=>"76", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"KLilv5Qv", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 03:01:31 UTC 2011", "description"=>"This would never upset Gordon Clemons", "id"=>"510", "location"=>"", "participants"=>"Michael Smith, Dan Starck and Doug Tierney", "release_date"=>"2008-07-02", "title"=>"That Was Close", "updated_at"=>"Tue Jan 31 03:32:11 UTC 2012", "views"=>"42", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"DZOMrPa3", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 03:12:47 UTC 2011", "description"=>"Not the ideal job interview", "id"=>"516", "location"=>"", "participants"=>"Cathy Casil", "release_date"=>"2008-07-01", "title"=>"The Monkey Stops Here", "updated_at"=>"Fri Jan 27 14:35:32 UTC 2012", "views"=>"92", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"detMoDDk", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 03:18:00 UTC 2011", "description"=>"He's selling like he's never sold before", "id"=>"518", "location"=>"", "participants"=>"Dan Starck", "release_date"=>"2008-07-01", "title"=>"Flashdance Maniac", "updated_at"=>"Fri Jan 27 19:49:56 UTC 2012", "views"=>"67", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"eMNJBGcC", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 03:19:25 UTC 2011", "description"=>"Feel the Force", "id"=>"520", "location"=>"", "participants"=>"Corporate Office", "release_date"=>"2008-07-01", "title"=>"Dance Party", "updated_at"=>"Thu Jan 26 20:11:16 UTC 2012", "views"=>"47", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"3u8GjyC9", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 03:22:28 UTC 2011", "description"=>"A blooper reel for videos in 2008", "id"=>"522", "location"=>"", "participants"=>"CorVel", "release_date"=>"2008-07-01", "title"=>"Outtakes", "updated_at"=>"Sat Jan 28 03:51:01 UTC 2012", "views"=>"42", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"U2pKkdEl", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 03:28:38 UTC 2011", "description"=>"CorVel's Enterprise Comp helps George Jetson out of a jam", "id"=>"524", "location"=>"", "participants"=>"Larry Baughn, Doug Tierney and Kathleen Wilson", "release_date"=>"2008-07-01", "title"=>"The Jetsons", "updated_at"=>"Fri Jan 27 17:09:07 UTC 2012", "views"=>"57", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Qw5CSbZH", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 03:33:00 UTC 2011", "description"=>"The folks are the top are more than just big wigs", "id"=>"526", "location"=>"", "participants"=>"Diane Blaha, Suzanne Caldbeck, Mike Donnelly and Scott Sexton", "release_date"=>"2008-07-01", "title"=>"The Coneheads", "updated_at"=>"Thu Jan 26 21:30:47 UTC 2012", "views"=>"39", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"P4pAbqDW", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 03:35:04 UTC 2011", "description"=>"These are the voyages of the Starship Enterprise", "id"=>"528", "location"=>"", "participants"=>"Scotty Benton, Brian Cronk, Greg Dorn, Charlie Green, Michael Saverien and Gregory Stevens", "release_date"=>"2008-07-01", "title"=>"Star Trek", "updated_at"=>"Mon Jan 30 15:43:23 UTC 2012", "views"=>"53", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"7cNVlFcf", "cached_tag_list"=>"CofE 2008,Episode 6,Season 6", "created_at"=>"Sat Jul 02 03:37:01 UTC 2011", "description"=>"Danger, Will Robinson", "id"=>"530", "location"=>"", "participants"=>"Joe Barger, Linda Bass, Hal Caudell and Steve Kirwan", "release_date"=>"2008-07-01", "title"=>"Lost in Space", "updated_at"=>"Wed Dec 28 16:05:23 UTC 2011", "views"=>"25", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"oM1RnNwZ", "cached_tag_list"=>"CofE 2006,Episode 4,Season 4", "created_at"=>"Sat Jul 02 03:45:24 UTC 2011", "description"=>"A spoof of the TV show Lost", "id"=>"532", "location"=>"", "participants"=>"Heather Burnham, Brandon O'Brien, Gordon Clemons, Laura Davis and Kim Leetzow", "release_date"=>"2006-06-29", "title"=>"Lost", "updated_at"=>"Tue Jan 31 03:45:11 UTC 2012", "views"=>"47", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"W9MG9unL", "cached_tag_list"=>"CofE 2006,Episode 4,Season 4", "created_at"=>"Sat Jul 02 03:48:27 UTC 2011", "description"=>"CareMC will let you", "id"=>"534", "location"=>"", "participants"=>"Gordon Clemons and Richard Schweppe", "release_date"=>"2006-06-29", "title"=>"Stick It to the Man", "updated_at"=>"Tue Jan 31 04:36:08 UTC 2012", "views"=>"34", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"azHwVOxD", "cached_tag_list"=>"CofE 2006,Episode 2,Season 2", "created_at"=>"Sat Jul 02 03:51:05 UTC 2011", "description"=>"Corporate offices in Irvine are acting strange", "id"=>"536", "location"=>"", "participants"=>"Suzanne Caldbeck, Jayna Dunning and Sally Ferguson", "release_date"=>"2006-06-29", "title"=>"Corporate Monkeys", "updated_at"=>"Fri Jan 27 17:18:45 UTC 2012", "views"=>"61", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"tQovF42Y", "cached_tag_list"=>"CofE 2006,Episode 4,Season 4", "created_at"=>"Sat Jul 02 03:54:52 UTC 2011", "description"=>"CareMC has a handle on it", "id"=>"538", "location"=>"", "participants"=>"Tom Benson and Ty Stewart", "release_date"=>"2006-06-29", "title"=>"Push It", "updated_at"=>"Wed Jan 04 23:53:17 UTC 2012", "views"=>"64", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"nOytNsZb", "cached_tag_list"=>"CofE 2006,Episode 4,Season 4", "created_at"=>"Sat Jul 02 04:02:19 UTC 2011", "description"=>"Triumph the Insult Comic Dog gives the weather", "id"=>"540", "location"=>"", "participants"=>"Greg Dorn", "release_date"=>"2006-06-29", "title"=>"Weather Report", "updated_at"=>"Thu Jan 26 23:06:28 UTC 2012", "views"=>"20", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"n9QeusRw", "cached_tag_list"=>"CofE 2006,Episode 4,Season 4", "created_at"=>"Sat Jul 02 04:05:58 UTC 2011", "description"=>"Hindsight is always 20/20", "id"=>"542", "location"=>"", "participants"=>"Gordon Clemons", "release_date"=>"2006-06-29", "title"=>"Monday Morning CEO", "updated_at"=>"Thu Jan 26 22:59:34 UTC 2012", "views"=>"94", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"tqcy3asO", "cached_tag_list"=>"CofE 2006,Episode 4,Season 4", "created_at"=>"Sat Jul 02 04:08:03 UTC 2011", "description"=>"The figures are a little skewed", "id"=>"544", "location"=>"", "participants"=>"Mike Donnelly", "release_date"=>"2006-06-29", "title"=>"Corporate Monkeys #2", "updated_at"=>"Mon Jan 30 21:37:57 UTC 2012", "views"=>"83", "likes_count"=>"3"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"44QK2DrA", "cached_tag_list"=>"CofE 2006,Episode 4,Season 4", "created_at"=>"Sat Jul 02 04:12:33 UTC 2011", "description"=>"Show corporate what you're made of", "id"=>"546", "location"=>"", "participants"=>"Gordon Clemons, Gordon Clemons Jr., Brandon O'Brien and Richard Schweppe", "release_date"=>"2006-06-29", "title"=>"Ben, Ben, Ben", "updated_at"=>"Wed Jan 04 23:53:27 UTC 2012", "views"=>"41", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"6uLE9DCU", "cached_tag_list"=>"CofE 2006,Episode 4,Season 4", "created_at"=>"Sat Jul 02 04:17:34 UTC 2011", "description"=>"A blooper reel for videos in 2006", "id"=>"548", "location"=>"", "participants"=>"CorVel", "release_date"=>"2006-06-29", "title"=>"Outtakes", "updated_at"=>"Thu Jan 26 20:53:08 UTC 2012", "views"=>"39", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"t5AHjkC6", "cached_tag_list"=>"CofE 2005,Episode 3,Season 3", "created_at"=>"Sat Jul 02 04:21:13 UTC 2011", "description"=>"State of the art", "id"=>"550", "location"=>"", "participants"=>"Brandon O'Brien and Richard Schweppe", "release_date"=>"2005-06-29", "title"=>"CorCalc", "updated_at"=>"Tue Dec 20 20:48:45 UTC 2011", "views"=>"23", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"c8kChZDc", "cached_tag_list"=>"CofE 2004,Episode 2,Season 2", "created_at"=>"Sat Jul 02 04:23:37 UTC 2011", "description"=>"You're fired", "id"=>"552", "location"=>"", "participants"=>"Gordon Clemons", "release_date"=>"2004-06-29", "title"=>"The Apprentice", "updated_at"=>"Wed Jan 25 21:09:29 UTC 2012", "views"=>"49", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"DFBR4Ba8", "cached_tag_list"=>"CofE 2004,Episode 2,Season 2", "created_at"=>"Sat Jul 02 04:27:10 UTC 2011", "description"=>"Three candidates, one available position", "id"=>"554", "location"=>"", "participants"=>"Cathy Casil and Gordon Clemons", "release_date"=>"2004-06-29", "title"=>"The Candidate", "updated_at"=>"Thu Jan 26 23:08:50 UTC 2012", "views"=>"47", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"zx1EYjnC", "cached_tag_list"=>"CofE 2006,Episode 4,Season 4", "created_at"=>"Sat Jul 02 04:30:30 UTC 2011", "description"=>"Witness the glory of the Irvine offices", "id"=>"556", "location"=>"", "participants"=>"Corporate Office", "release_date"=>"2006-06-29", "title"=>"The Day in the Life of Corporate", "updated_at"=>"Thu Jan 26 19:14:52 UTC 2012", "views"=>"46", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"S12FeLxM", "cached_tag_list"=>"CofE 2004,Episode 2,Season 2", "created_at"=>"Sat Jul 02 04:31:44 UTC 2011", "description"=>"A blooper reel for videos in 2004", "id"=>"558", "location"=>"", "participants"=>"CorVel", "release_date"=>"2004-06-29", "title"=>"Outtakes", "updated_at"=>"Fri Jan 20 01:03:48 UTC 2012", "views"=>"73", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"2dnUIZ0d", "cached_tag_list"=>"CofE 2004,Episode 2,Season 2", "created_at"=>"Sat Jul 02 04:34:51 UTC 2011", "description"=>"Gordon and Richard leave the executive life for 30 days", "id"=>"560", "location"=>"", "participants"=>"Gordon Clemons and Richard Schweppe", "release_date"=>"2004-06-29", "title"=>"The Simple Life", "updated_at"=>"Tue Jan 31 03:49:12 UTC 2012", "views"=>"45", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"VPtU62MW", "cached_tag_list"=>"CofE 2004,Episode 2,Season 2", "created_at"=>"Sat Jul 02 04:38:20 UTC 2011", "description"=>"CorVel's Real Corporate Genius", "id"=>"562", "location"=>"", "participants"=>"Ty Stewart", "release_date"=>"2004-06-29", "title"=>"Mr. IT Tech Programming Web Systems Guy", "updated_at"=>"Wed Dec 28 18:32:21 UTC 2011", "views"=>"43", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"ttRGTklO", "cached_tag_list"=>"CofE 2004,Episode 2,Season 2", "created_at"=>"Sat Jul 02 04:42:03 UTC 2011", "description"=>"CorVel's Real Corporate Genius", "id"=>"564", "location"=>"", "participants"=>"Sharon O'Connor", "release_date"=>"2004-06-29", "title"=>"Ms. Legal Department Document Reviewer", "updated_at"=>"Fri Jan 20 03:24:12 UTC 2012", "views"=>"32", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"LtrI5FeL", "cached_tag_list"=>"CofE 2004,Episode 2,Season 2", "created_at"=>"Sat Jul 02 04:44:19 UTC 2011", "description"=>"CorVel's Real Corporate Genius", "id"=>"566", "location"=>"", "participants"=>"Heather Burnham ", "release_date"=>"2004-06-29", "title"=>"Mrs. Corporate Marketing Logo Police", "updated_at"=>"Thu Jan 26 18:36:51 UTC 2012", "views"=>"71", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"V4zjcLt3", "cached_tag_list"=>"CofE 2004,Episode 2,Season 2", "created_at"=>"Sat Jul 02 04:47:12 UTC 2011", "description"=>"CorVel's Real Corporate Genius", "id"=>"568", "location"=>"", "participants"=>"CorVel", "release_date"=>"2004-06-29", "title"=>"Mr. New Product Product Manager", "updated_at"=>"Tue Jan 10 21:30:20 UTC 2012", "views"=>"28", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"971RJVqQ", "cached_tag_list"=>"CofE 2004,Episode 2,Season 2", "created_at"=>"Sat Jul 02 04:49:00 UTC 2011", "description"=>"CorVel's Real Corporate Genius", "id"=>"570", "location"=>"", "participants"=>"Kim Leetzow", "release_date"=>"2004-06-29", "title"=>"Mrs. WebEx Conference Call Coordinator", "updated_at"=>"Thu Dec 22 23:30:57 UTC 2011", "views"=>"19", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"bbJ1abiw", "cached_tag_list"=>"CofE 2004,Episode 2,Season 2", "created_at"=>"Sat Jul 02 04:52:16 UTC 2011", "description"=>"These gals can increase revenue", "id"=>"572", "location"=>"", "participants"=>"Greg Dorn, Gregory Stevens and Michael Saverien", "release_date"=>"2004-06-29", "title"=>"Gordon's Angels", "updated_at"=>"Fri Jan 27 13:39:37 UTC 2012", "views"=>"63", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"BB2VZGcG", "cached_tag_list"=>"CofE 2004,Episode 2,Season 2", "created_at"=>"Sat Jul 02 04:56:41 UTC 2011", "description"=>"Selling the client in Chicago, IL", "id"=>"574", "location"=>"", "participants"=>"Diane Blaha, Jayna Dunning and Ron Wojciechowski", "release_date"=>"2004-06-29", "title"=>"Be Like CorVel", "updated_at"=>"Fri Jan 27 19:44:28 UTC 2012", "views"=>"61", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"MPqrfDqO", "cached_tag_list"=>"CofE 2004,Episode 2,Season 2", "created_at"=>"Sat Jul 02 05:00:08 UTC 2011", "description"=>"To boldly go where no managed care company has gone before", "id"=>"576", "location"=>"", "participants"=>"Doug Homa, Steve Kirwan and Chris Lyons", "release_date"=>"2004-06-29", "title"=>"Star Chek", "updated_at"=>"Thu Dec 29 15:44:37 UTC 2011", "views"=>"66", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"mRtAHDaz", "cached_tag_list"=>"CofE 2004,Episode 2,Season 2", "created_at"=>"Sat Jul 02 05:03:02 UTC 2011", "description"=>"Toto, I have a feeling we're not in Florida anymore", "id"=>"578", "location"=>"", "participants"=>"Mary Walters and Gay Wys", "release_date"=>"2004-06-29", "title"=>"The Wizards of CorVel", "updated_at"=>"Mon Jan 16 21:04:25 UTC 2012", "views"=>"113", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"KAv0sKNG", "cached_tag_list"=>"CofE 2004,Episode 1,Season 2", "created_at"=>"Sat Jul 02 05:07:04 UTC 2011", "description"=>"CorVel vs. Consensus", "id"=>"580", "location"=>"", "participants"=>"Steve Wheeler and Kathleen Wilson", "release_date"=>"2004-06-29", "title"=>"The US Open Network Services", "updated_at"=>"Wed Dec 28 23:13:42 UTC 2011", "views"=>"20", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"IgzTRrz2", "cached_tag_list"=>"CofE 2003,Episode 1,Season 1", "created_at"=>"Sat Jul 02 05:13:45 UTC 2011", "description"=>"A cheerful tribute Chuck Berry", "id"=>"582", "location"=>"", "participants"=>"Team Video", "release_date"=>"2003-06-29", "title"=>"Rockin' Features", "updated_at"=>"Wed Dec 28 18:24:32 UTC 2011", "views"=>"58", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"QM6Y7myZ", "cached_tag_list"=>"CofE 2003,Episode 1,Season 1", "created_at"=>"Sat Jul 02 05:15:43 UTC 2011", "description"=>"A tribute to Prince", "id"=>"584", "location"=>"", "participants"=>"Hal Caudell", "release_date"=>"2003-06-29", "title"=>"New Medcheck", "updated_at"=>"Tue Jan 10 15:06:39 UTC 2012", "views"=>"58", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"YwoI8yyN", "cached_tag_list"=>"CofE 2003,Episode 1,Season 1", "created_at"=>"Sat Jul 02 05:17:35 UTC 2011", "description"=>"Scott McCloud shows of his pad, MTV style", "id"=>"586", "location"=>"", "participants"=>"Scott McCloud", "release_date"=>"2003-06-29", "title"=>"Cribs", "updated_at"=>"Fri Jan 27 17:21:05 UTC 2012", "views"=>"120", "likes_count"=>"3"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"DHmD0MFG", "cached_tag_list"=>"CofE 2003,Episode 1,Season 1", "created_at"=>"Sat Jul 02 05:38:16 UTC 2011", "description"=>"The Story of the band behind the hit song \"CorVelocity\"", "id"=>"588", "location"=>"", "participants"=>"Heather Burnham, Gordon Clemons, Gordon Clemons Jr., Kim Leetzow, Brandon O'Brien, Sharon O'Connor and Richard Schweppe", "release_date"=>"2003-06-29", "title"=>"Behind the Music - Blues Brothers", "updated_at"=>"Sun Jan 01 04:45:28 UTC 2012", "views"=>"47", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"g1idnRcK", "cached_tag_list"=>"CofE 2003,Episode 1,Season 1", "created_at"=>"Sat Jul 02 05:41:02 UTC 2011", "description"=>"Shut yo' mouth", "id"=>"590", "location"=>"", "participants"=>"Robyn Hale, Ruth Jackson, Don McFarlane, Michael Smith and Mary Walters", "release_date"=>"2003-06-29", "title"=>"Shaft", "updated_at"=>"Mon Jan 09 21:18:45 UTC 2012", "views"=>"39", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"dUBUZwHt", "cached_tag_list"=>"CofE 2003,Episode 1,Season 1", "created_at"=>"Sat Jul 02 05:44:09 UTC 2011", "description"=>"A family that's going off the rails on a crazy train", "id"=>"592", "location"=>"", "participants"=>"Suzanne Caldbeck and Frank Hackett", "release_date"=>"2003-06-29", "title"=>"The Hacketts", "updated_at"=>"Thu Jan 26 18:53:38 UTC 2012", "views"=>"59", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"84la5Wjm", "cached_tag_list"=>"CofE 2003,Episode 1,Season 1", "created_at"=>"Sat Jul 02 05:51:50 UTC 2011", "description"=>"A musical tribute to Jimmy Buffet", "id"=>"594", "location"=>"", "participants"=>"Team Video", "release_date"=>"2003-06-29", "title"=>"CorVelritaville", "updated_at"=>"Wed Dec 28 21:20:10 UTC 2011", "views"=>"95", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"QtdXzdtu", "cached_tag_list"=>"CofE 2003,Episode 1,Season 1", "created_at"=>"Sat Jul 02 06:14:23 UTC 2011", "description"=>"A musical tribute to the Beach Boys", "id"=>"596", "location"=>"", "participants"=>"Jayna Dunning, Claudia Kettrick and Chris Lyons", "release_date"=>"2003-06-29", "title"=>"CorVel Oh", "updated_at"=>"Fri Jan 27 19:47:41 UTC 2012", "views"=>"77", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"vBye3oML", "cached_tag_list"=>"CofE 2003,Episode 1,Season 1", "created_at"=>"Sat Jul 02 06:20:47 UTC 2011", "description"=>"A musical tribute to ELO", "id"=>"598", "location"=>"", "participants"=>"Tom Benson and Suzanne Caldbeck", "release_date"=>"2003-06-29", "title"=>"Won't Let You Down", "updated_at"=>"Tue Jan 31 21:04:40 UTC 2012", "views"=>"30", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"RHuhLwUv", "cached_tag_list"=>"CofE 2003,Episode 1,Season 1", "created_at"=>"Sat Jul 02 06:23:06 UTC 2011", "description"=>"A musical tribute to the B-52s", "id"=>"600", "location"=>"", "participants"=>"Kathy Buenger and Scott McCloud", "release_date"=>"2003-07-18", "title"=>"Love Shack", "updated_at"=>"Tue Jan 31 04:36:39 UTC 2012", "views"=>"57", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"FJ8KtRTR", "cached_tag_list"=>"CofE 2003,Episode 1,Season 1", "created_at"=>"Sat Jul 02 06:36:26 UTC 2011", "description"=>"A musical tribute to Run DMC", "id"=>"602", "location"=>"", "participants"=>"Greg Dorn, Frank Hackett and Ron Wojciechowski", "release_date"=>"2003-06-29", "title"=>"RIMS 03 Shuffle", "updated_at"=>"Tue Jan 10 20:37:00 UTC 2012", "views"=>"41", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"id5wlWbr", "cached_tag_list"=>"CofE 2003,Episode 1,Season 1", "created_at"=>"Sat Jul 02 06:44:45 UTC 2011", "description"=>"A spoof of American Idol", "id"=>"604", "location"=>"", "participants"=>"Scott McCloud, Don McFarlane, Michael Smith, Nancy Swaim and Mary Walters", "release_date"=>"2003-05-29", "title"=>"American Idol", "updated_at"=>"Wed Jan 11 18:43:59 UTC 2012", "views"=>"139", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"m6WuPHKZ", "cached_tag_list"=>"Connected TV,Connected TV", "created_at"=>"Mon Jul 11 19:51:51 UTC 2011", "description"=>"You all know the CorVel of today: a tech-savvy company with 100's of offices and thousands of employees.  What you may not know is that it all started more than 2 decades ago in Minneapolis.", "id"=>"610", "location"=>"Minneapolis, MN", "participants"=>"[The Minneapolis Office]", "release_date"=>"2011-07-11", "title"=>"CorVel: A Secret History", "updated_at"=>"Thu Jan 19 18:01:39 UTC 2012", "views"=>"1838", "likes_count"=>"86"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"qAvbrAY4", "cached_tag_list"=>"Partnership,iConnect", "created_at"=>"Wed Jul 20 19:16:38 UTC 2011", "description"=>"Real Men of Genius... who can't dance.", "id"=>"620", "location"=>"CorVel", "participants"=>".", "release_date"=>"2010-07-20", "title"=>"Bad Dancer", "updated_at"=>"Tue Jan 10 23:27:25 UTC 2012", "views"=>"70", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"D8spUgOH", "cached_tag_list"=>"Partnership,iConnect", "created_at"=>"Wed Jul 20 19:22:39 UTC 2011", "description"=>"Our rock stars aren't like your rock stars.", "id"=>"622", "location"=>"", "participants"=>"Acuity", "release_date"=>"2010-07-20", "title"=>"Acuity Rock Star", "updated_at"=>"Thu Jan 05 19:41:36 UTC 2012", "views"=>"65", "likes_count"=>"2"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"G5mesHAq", "cached_tag_list"=>"Partnership,iConnect", "created_at"=>"Wed Jul 20 19:26:42 UTC 2011", "description"=>"Don't let a dropped call ruin your business.", "id"=>"624", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2010-07-20", "title"=>"Dropped Call", "updated_at"=>"Tue Jan 24 21:25:35 UTC 2012", "views"=>"57", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"tWtrxYI4", "cached_tag_list"=>"Partnership,iConnect", "created_at"=>"Wed Jul 20 19:29:27 UTC 2011", "description"=>"Real Men of Genius... who wear too much cologne.", "id"=>"626", "location"=>"CorVel", "participants"=>"SFM", "release_date"=>"2010-07-21", "title"=>"Mr. Too Much Cologne Wearer", "updated_at"=>"Fri Jan 27 14:35:27 UTC 2012", "views"=>"118", "likes_count"=>"4"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"pDXyQK7T", "cached_tag_list"=>"Partnership,iConnect", "created_at"=>"Wed Jul 20 19:48:30 UTC 2011", "description"=>"Real Men of Genius... who quietly hold up signs.", "id"=>"628", "location"=>"CorVel", "participants"=>"Acuity", "release_date"=>"2010-07-21", "title"=>"Acuity Golf", "updated_at"=>"Sat Jan 28 21:19:02 UTC 2012", "views"=>"46", "likes_count"=>"1"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"wU4AhEN1", "cached_tag_list"=>"Partnership,iConnect", "created_at"=>"Wed Jul 20 20:00:52 UTC 2011", "description"=>"Stay warm and comfy in meetings with the Partnership Snuggie!", "id"=>"630", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2010-07-20", "title"=>"Partnership Snuggie", "updated_at"=>"Thu Jan 26 19:37:28 UTC 2012", "views"=>"61", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"4cJMrp09", "cached_tag_list"=>"Partnership,iConnect", "created_at"=>"Wed Jul 20 20:05:27 UTC 2011", "description"=>"We really don't get French Benefits?", "id"=>"632", "location"=>"", "participants"=>"MEM", "release_date"=>"2010-07-20", "title"=>"Wrong", "updated_at"=>"Sat Jan 28 03:50:08 UTC 2012", "views"=>"63", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"76fw4Qrg", "cached_tag_list"=>"Partnership,iConnect", "created_at"=>"Wed Jul 20 20:09:07 UTC 2011", "description"=>"The talking stain", "id"=>"634", "location"=>"", "participants"=>"CorVel", "release_date"=>"2010-07-20", "title"=>"Stain", "updated_at"=>"Thu Jan 26 19:01:35 UTC 2012", "views"=>"49", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"9vbPu10O", "cached_tag_list"=>"Partnership,iConnect", "created_at"=>"Wed Jul 20 20:20:00 UTC 2011", "description"=>"That did it...absolutely.", "id"=>"636", "location"=>"", "participants"=>"CorVel", "release_date"=>"2010-07-20", "title"=>"That Was Close", "updated_at"=>"Tue Jan 31 04:34:59 UTC 2012", "views"=>"63", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"iicE8g6U", "cached_tag_list"=>"Marketing,Marketing", "created_at"=>"Tue Jul 26 04:53:23 UTC 2011", "description"=>"CorVel's Advocacy 24/7 is the solution", "id"=>"640", "location"=>"", "participants"=>"Corporate Marketing", "release_date"=>"2011-07-26", "title"=>"Advocacy 24/7", "updated_at"=>"Thu Jan 05 04:57:41 UTC 2012", "views"=>"2160", "likes_count"=>"29"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"jYWgjIU7", "cached_tag_list"=>"Marketing,Marketing", "created_at"=>"Fri Jul 29 06:09:53 UTC 2011", "description"=>"I guess you would call it \xE2\x80\x93 The human touch", "id"=>"642", "location"=>"", "participants"=>"CorVel Corporate, Orange Office", "release_date"=>"2011-06-29", "title"=>"CorVel Brand Video 2011", "updated_at"=>"Wed Jan 25 17:52:38 UTC 2012", "views"=>"83", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Xo7RWVtg", "cached_tag_list"=>"CorVel Connected, North Carolina,Connected TV", "created_at"=>"Tue Aug 30 00:29:59 UTC 2011", "description"=>"Discover what \"First in Flight\" means to CorVel's North Carolina offices...  ...as Area Manager Barry Price takes us to Charlotte and Raleigh to showcase their phenomenal growth.", "id"=>"650", "location"=>"North Carolina", "participants"=>"The North Carolina Offices", "release_date"=>"2010-08-30", "title"=>"CorVel North Carolina: First in Flight", "updated_at"=>"Tue Jan 31 00:15:11 UTC 2012", "views"=>"1816", "likes_count"=>"42"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"EVwCtgxd", "cached_tag_list"=>"Connected TV, Boise, Wellness, Biometric Screening,Connected TV", "created_at"=>"Tue Sep 20 01:06:02 UTC 2011", "description"=>"Medical Case Manager Brent Frazier and the rest of the Boise office have used CorVel's Biometric Screening\xE2\x80\xA6  \xE2\x80\xA6to improve their health. Learn how CorVel's Wellness Program guided Frazier on his journey to fitness and how CorVel can help you know your numbers!", "id"=>"657", "location"=>"Boise, Idaho", "participants"=>"Brent Frazier & The Boise Office", "release_date"=>"2011-09-01", "title"=>"CorVel Wellness", "updated_at"=>"Mon Jan 30 22:06:50 UTC 2012", "views"=>"1442", "likes_count"=>"27"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"efq2s0sp", "cached_tag_list"=>"Orlando,Connected TV", "created_at"=>"Mon Oct 31 17:26:36 UTC 2011", "description"=>"Orlando is truly a pioneering office - there are actually people who have been working here since Oregon Trail times.  But that\xE2\x80\x99s not the only reason they are known as pioneers. Meet the Orlando office and take a look behind the scenes to see how they pioneer new products for CorVel!", "id"=>"670", "location"=>"Orlando, FL", "participants"=>"Gay Wys, Robert Harvan and the Orlando Office", "release_date"=>"2011-10-31", "title"=>"CorVel Orlando", "updated_at"=>"Tue Jan 31 00:12:53 UTC 2012", "views"=>"1435", "likes_count"=>"21"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"BvOYCho3", "cached_tag_list"=>"Downers Grove,Connected TV", "created_at"=>"Fri Dec 09 22:53:46 UTC 2011", "description"=>"Catch up on the action at CorVel's Downers Grove location.  This office handles so many aspects of CorVel's business. Need something done? Just Get Into The Grove!", "id"=>"689", "location"=>"Downers Grove, IL", "participants"=>"Diane Blaha, Darren Stahulak, Stephanie Bonifield and the Downers Grove office", "release_date"=>"2011-12-14", "title"=>"CorVel Downers Grove", "updated_at"=>"Tue Jan 31 00:18:32 UTC 2012", "views"=>"1088", "likes_count"=>"34"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"ClpNncF5", "cached_tag_list"=>"CofE 1992,Episode 1,Season 10", "created_at"=>"Wed Dec 21 23:15:06 UTC 2011", "description"=>"The Greatest Hits of Gordon Clemons", "id"=>"694", "location"=>"CorVel", "participants"=>"Richard Schweppe", "release_date"=>"1992-01-01", "title"=>"Gordon's Greatest", "updated_at"=>"Fri Jan 27 21:29:49 UTC 2012", "views"=>"5", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"C5twzpgZ", "cached_tag_list"=>"CofE 1993,Episode 1,Season 11", "created_at"=>"Thu Dec 22 01:20:09 UTC 2011", "description"=>"1993 Circle of Excellence Awards Opening", "id"=>"698", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1993-01-01", "title"=>"Circle of Excellence Awards", "updated_at"=>"Tue Jan 31 17:10:32 UTC 2012", "views"=>"8", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"uNeW4mcS", "cached_tag_list"=>"CofE 1993,Episode 2,Season 11", "created_at"=>"Thu Dec 22 01:22:48 UTC 2011", "description"=>"It's a beautiful day in the neighborhood.", "id"=>"700", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1993-01-02", "title"=>"Mr. Rogers", "updated_at"=>"Thu Jan 26 19:04:30 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"ooWYidUJ", "cached_tag_list"=>"CofE 1994,Episode 2,Season 12", "created_at"=>"Thu Dec 22 01:25:02 UTC 2011", "description"=>"Is it a PPO? Oh no, it's so much more!", "id"=>"702", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1994-01-02", "title"=>"CorVel's Got Corvelocity", "updated_at"=>"Tue Jan 10 21:43:59 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"W5cn6E5m", "cached_tag_list"=>"CofE 1994,Episode 1,Season 12", "created_at"=>"Thu Dec 22 01:27:24 UTC 2011", "description"=>"1994 Circle of Excellence Opening", "id"=>"704", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1994-01-01", "title"=>"Circle of Excellence Awards - CorVelocity", "updated_at"=>"Fri Jan 27 13:01:26 UTC 2012", "views"=>"9", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"IcFKEuJy", "cached_tag_list"=>"CofE 1995,Episode 1,Season 13", "created_at"=>"Thu Dec 22 01:31:22 UTC 2011", "description"=>"1995 Circle of Excellence Awards Opening Trailers", "id"=>"706", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1995-01-01", "title"=>"Circle of Excellence Awards", "updated_at"=>"Thu Jan 12 00:51:42 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"nqvjZRP3", "cached_tag_list"=>"Connected TV,Connected TV", "created_at"=>"Fri Dec 23 00:11:06 UTC 2011", "description"=>"CorVel celebrates 20 years as a publically-traded company.  After the honor of ringing the NASDAQ Opening Bell in New York City, CorVel shares the excitement and looks forward to the next 20 years ahead.", "id"=>"708", "location"=>"New York, NY", "participants"=>"All CorVel Offices", "release_date"=>"2011-12-27", "title"=>"NASDAQ", "updated_at"=>"Tue Jan 31 04:34:28 UTC 2012", "views"=>"1199", "likes_count"=>"38"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Af6Q4Dmu", "cached_tag_list"=>"CofE 1995,Episode 5,Season 13", "created_at"=>"Wed Dec 28 21:04:42 UTC 2011", "description"=>"1995 CorVel Five-0", "id"=>"711", "location"=>"Hawaii", "participants"=>"CorVel", "release_date"=>"1995-01-05", "title"=>"CorVel Five-0", "updated_at"=>"Fri Jan 27 17:00:45 UTC 2012", "views"=>"7", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"AgpvSMZo", "cached_tag_list"=>"CofE 1995,Episode 2,Season 13", "created_at"=>"Wed Dec 28 21:07:58 UTC 2011", "description"=>"The Sandbox CEOs", "id"=>"713", "location"=>"Hawaii", "participants"=>"CorVel", "release_date"=>"1995-01-02", "title"=>"Hawaii Five-0", "updated_at"=>"Thu Jan 26 20:07:28 UTC 2012", "views"=>"8", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"LVAOxXAz", "cached_tag_list"=>"CofE 1995,Episode 3,Season 13", "created_at"=>"Wed Dec 28 21:09:33 UTC 2011", "description"=>"1995 Fantasy Island", "id"=>"715", "location"=>"Hawaii", "participants"=>"CorVel", "release_date"=>"1995-01-03", "title"=>"Fantasy Island", "updated_at"=>"Fri Jan 27 17:15:45 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"WgaDLFuD", "cached_tag_list"=>"CofE 1995,Episode 4,Season 13", "created_at"=>"Wed Dec 28 21:11:56 UTC 2011", "description"=>"They're cruisin', smoozin', Maui movin'!", "id"=>"717", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1995-01-04", "title"=>"CorVeleers", "updated_at"=>"Tue Jan 10 21:49:07 UTC 2012", "views"=>"1", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"zHc2iCUp", "cached_tag_list"=>"CofE 1995,Episode 6,Season 13", "created_at"=>"Wed Dec 28 21:13:54 UTC 2011", "description"=>"See what happens on Gordon's Island.", "id"=>"719", "location"=>"Hawaii", "participants"=>"CorVel", "release_date"=>"1995-01-06", "title"=>"The CorVel Castaways", "updated_at"=>"Fri Jan 27 17:37:26 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"PiYLArRl", "cached_tag_list"=>"CofE 1995,Episode 7,Season 13", "created_at"=>"Wed Dec 28 21:18:05 UTC 2011", "description"=>"The Regis & Kathy-Lee show featuring special guests Lumpy & the Blowfish", "id"=>"721", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1995-01-07", "title"=>"Lumpy & the Blowfish", "updated_at"=>"Tue Jan 10 21:50:47 UTC 2012", "views"=>"1", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"EBPp2poN", "cached_tag_list"=>"CofE 1995,Episode 9,Season 13", "created_at"=>"Wed Dec 28 21:21:05 UTC 2011", "description"=>"1995 Circle of Excellence Awards Closing", "id"=>"723", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1995-01-09", "title"=>"Circle of Excellence Awards Closing", "updated_at"=>"Thu Jan 26 19:39:21 UTC 2012", "views"=>"7", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"QGqIsQ2g", "cached_tag_list"=>"CofE 1995,Episode 8,Season 13", "created_at"=>"Wed Dec 28 21:27:11 UTC 2011", "description"=>"1995 The Maui Wave Runners", "id"=>"725", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1995-01-08", "title"=>"The Maui Wave Runners", "updated_at"=>"Tue Jan 10 21:51:28 UTC 2012", "views"=>"1", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"7uolb2wl", "cached_tag_list"=>"CofE 1996,Episode 1,Season 14", "created_at"=>"Wed Dec 28 21:47:37 UTC 2011", "description"=>"1996 Circle of Excellence Awards Opening", "id"=>"727", "location"=>"", "participants"=>"CorVel", "release_date"=>"1996-01-01", "title"=>"CorVel: The Sun & the Stars", "updated_at"=>"Thu Jan 26 19:28:38 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"0qNicAYw", "cached_tag_list"=>"CofE 1996,Episode 2,Season 14", "created_at"=>"Wed Dec 28 21:51:17 UTC 2011", "description"=>"CorVel navigates the spacepool lane.", "id"=>"729", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1996-01-02", "title"=>"CorVel at Light Speed", "updated_at"=>"Thu Jan 26 19:32:03 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"HELkn9Nb", "cached_tag_list"=>"CofE 1996,Episode 3,Season 14", "created_at"=>"Wed Dec 28 23:31:23 UTC 2011", "description"=>"1996 The First Coordinates", "id"=>"731", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1996-01-03", "title"=>"The First Coordinates", "updated_at"=>"Fri Jan 27 17:16:49 UTC 2012", "views"=>"5", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"6nTP694L", "cached_tag_list"=>"CofE 1996,Episode 4,Season 14", "created_at"=>"Wed Dec 28 23:35:39 UTC 2011", "description"=>"Heather finds herself in a predicament after going out for a space walk.", "id"=>"733", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1996-01-04", "title"=>"Walking in Space Pt I", "updated_at"=>"Tue Jan 10 21:54:44 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"TkT5bqr6", "cached_tag_list"=>"CofE 1996,Episode 5,Season 14", "created_at"=>"Wed Dec 28 23:40:28 UTC 2011", "description"=>"1996 Walking in Space Pt II", "id"=>"735", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1996-01-05", "title"=>"Walking in Space Pt II", "updated_at"=>"Fri Jan 27 17:18:51 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"KHlG0RA3", "cached_tag_list"=>"CofE 1996,Episode 6,Season 14", "created_at"=>"Thu Dec 29 00:21:33 UTC 2011", "description"=>"Heather & Richard run into an outdated spaceship.", "id"=>"737", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1996-01-06", "title"=>"Technologically Advanced Pt I", "updated_at"=>"Fri Jan 13 21:41:32 UTC 2012", "views"=>"5", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"zV8PBj5q", "cached_tag_list"=>"CofE 1996,Episode 7,Season 14", "created_at"=>"Thu Dec 29 00:33:37 UTC 2011", "description"=>"1996 Technologically Advanced Pt II", "id"=>"739", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1996-01-07", "title"=>"Technologically Advanced Pt II", "updated_at"=>"Thu Jan 26 18:59:06 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"T1ZGBq7L", "cached_tag_list"=>"CofE 1996,Episode 8,Season 14", "created_at"=>"Fri Dec 30 00:08:40 UTC 2011", "description"=>"Aliens take over the corporate office.", "id"=>"741", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1996-01-08", "title"=>"Alien Invasion Pt I", "updated_at"=>"Tue Jan 10 21:56:19 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"KSUtrrn7", "cached_tag_list"=>"CofE 1996,Episode 9,Season 14", "created_at"=>"Fri Dec 30 00:10:37 UTC 2011", "description"=>"1996 Alien Invasion Pt II", "id"=>"743", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1996-01-09", "title"=>"Alien Invasion Pt II", "updated_at"=>"Tue Jan 10 21:56:44 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"hjLvWARx", "cached_tag_list"=>"CofE 1996,Episode 10,Season 14", "created_at"=>"Fri Dec 30 00:16:35 UTC 2011", "description"=>"An accidental time warp takes us back to 1968...  ...where a young Louis Silverman dreams of a Boston Celtics championship.", "id"=>"745", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1996-01-10", "title"=>"Time Warp Pt I", "updated_at"=>"Fri Jan 13 21:50:29 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"DASK0f67", "cached_tag_list"=>"CofE 1996,Episode 11,Season 14", "created_at"=>"Fri Dec 30 00:18:46 UTC 2011", "description"=>"1996 Time Warp Pt II", "id"=>"747", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1996-01-11", "title"=>"Time Warp Pt II", "updated_at"=>"Fri Jan 27 21:28:00 UTC 2012", "views"=>"7", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"YODSqktd", "cached_tag_list"=>"CofE 1996,Episode 12,Season 14", "created_at"=>"Wed Jan 04 19:18:44 UTC 2012", "description"=>"The crew needs refreshments as the intergalactic journey continues.", "id"=>"751", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1996-01-12", "title"=>"Getting Thirsty Pt I", "updated_at"=>"Thu Jan 26 21:11:13 UTC 2012", "views"=>"5", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"04q0Vq5X", "cached_tag_list"=>"CofE 1996,Episode 13,Season 14", "created_at"=>"Wed Jan 04 19:20:08 UTC 2012", "description"=>"1996 Getting Thirsty Pt II", "id"=>"753", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1996-01-13", "title"=>"Getting Thirsty Pt II", "updated_at"=>"Thu Jan 26 20:44:52 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"fUfvFEHO", "cached_tag_list"=>"CofE 1996,Episode 14,Season 14", "created_at"=>"Wed Jan 04 19:23:59 UTC 2012", "description"=>"Heather Burnham saves the day.", "id"=>"755", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1996-01-14", "title"=>"Galactic CRA Battle", "updated_at"=>"Fri Jan 27 18:12:49 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Te5sPFPz", "cached_tag_list"=>"CofE 1996,Episode 15,Season 14", "created_at"=>"Wed Jan 04 19:26:06 UTC 2012", "description"=>"1996 Circle of Excellence Awards Closing", "id"=>"757", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1996-01-15", "title"=>"Final Signoff", "updated_at"=>"Tue Jan 10 21:59:27 UTC 2012", "views"=>"1", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"PA2oISsU", "cached_tag_list"=>"CofE 1997,Episode 1,Season 15", "created_at"=>"Wed Jan 04 19:28:51 UTC 2012", "description"=>"1997 Circle of Excellence Awards Opening", "id"=>"759", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1997-01-01", "title"=>"Circle of Excellence Awards - Channel Surfing", "updated_at"=>"Fri Jan 27 22:11:47 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"I4Til6yb", "cached_tag_list"=>"CofE 1997,Episode 2,Season 15", "created_at"=>"Wed Jan 04 19:31:55 UTC 2012", "description"=>"The cast retaliates when Martha Stewart is a no show on Web World.", "id"=>"761", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1997-01-02", "title"=>"The Digital Gourmet", "updated_at"=>"Thu Jan 26 19:02:46 UTC 2012", "views"=>"5", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"C6DfhJJ0", "cached_tag_list"=>"CofE 1997,Episode 3,Season 15", "created_at"=>"Wed Jan 04 23:02:15 UTC 2012", "description"=>"Richard takes to the Circle of Excellence Awards floor to find the cyber-savvy.", "id"=>"763", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1997-01-03", "title"=>"Richard on the Street", "updated_at"=>"Sat Jan 28 03:43:18 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"iE9a9fsf", "cached_tag_list"=>"CofE 1997,Episode 4,Season 15", "created_at"=>"Wed Jan 04 23:09:42 UTC 2012", "description"=>"The competition heats up at the Circle of Excellence awards as the tech wizards cover all the activity.", "id"=>"765", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1997-01-04", "title"=>"Sports Segment", "updated_at"=>"Sat Jan 28 03:47:56 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"5Hjaezvh", "cached_tag_list"=>"CofE 1997,Episode 5,Season 15", "created_at"=>"Wed Jan 04 23:12:32 UTC 2012", "description"=>"In order to surf the web, you've got to stay in T1 shape!", "id"=>"767", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1997-01-05", "title"=>"Health & Fitness", "updated_at"=>"Fri Jan 27 17:31:23 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"ejQiTmFB", "cached_tag_list"=>"CofE 1997,Episode 6,Season 15", "created_at"=>"Wed Jan 04 23:17:43 UTC 2012", "description"=>"The CorVel \"Not Ready for Cyber Space\" Players reenact The Titanic.", "id"=>"769", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1997-01-06", "title"=>"CorVel Presents The Titanic", "updated_at"=>"Thu Jan 26 22:56:01 UTC 2012", "views"=>"7", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"1RYOHYmM", "cached_tag_list"=>"CofE 1997,Episode 7,Season 15", "created_at"=>"Thu Jan 05 19:03:46 UTC 2012", "description"=>"Check out Web World's video pick of the week.", "id"=>"771", "location"=>"CorVel", "participants"=>"Heather Burnham and Richard Schweppe", "release_date"=>"1997-01-07", "title"=>"The Webolution", "updated_at"=>"Tue Jan 10 22:03:51 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"ef4S1L26", "cached_tag_list"=>"CofE 1997,Episode 8,Season 15", "created_at"=>"Thu Jan 05 19:07:27 UTC 2012", "description"=>"CorVel gets a fashion makeover, Web World-style!", "id"=>"773", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1997-01-08", "title"=>"Fashion En Vogue", "updated_at"=>"Fri Jan 27 22:31:28 UTC 2012", "views"=>"5", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Oytqe2qL", "cached_tag_list"=>"CofE 1997,Episode 9,Season 15", "created_at"=>"Thu Jan 05 19:10:39 UTC 2012", "description"=>"With cyber travel, you don't need to leave home to go on vacation!", "id"=>"775", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1997-01-09", "title"=>"Virtual Reality Travel", "updated_at"=>"Tue Jan 10 22:09:27 UTC 2012", "views"=>"1", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"oDKDVJwN", "cached_tag_list"=>"CofE 1998,Episode 1,Season 16", "created_at"=>"Thu Jan 05 19:14:49 UTC 2012", "description"=>"Welcome to Vacation Destinations with Heather & Richard.", "id"=>"777", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-01", "title"=>"Circle of Excellence Awards - Vacation Destinations", "updated_at"=>"Tue Jan 31 03:34:20 UTC 2012", "views"=>"5", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"tEJlOcrO", "cached_tag_list"=>"CofE 1998,Episode 2,Season 16", "created_at"=>"Thu Jan 05 19:17:58 UTC 2012", "description"=>"Hear such classics as \"The Man from Idaho\" and \"The CorVel Bunch Theme Song.\"", "id"=>"779", "location"=>"CorVel", "participants"=>"Richard Schweppe", "release_date"=>"1998-01-02", "title"=>"The Greatest Hits of Gordon Clemons", "updated_at"=>"Mon Jan 30 15:47:14 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"I37eQ9vA", "cached_tag_list"=>"CofE 1998,Episode 3,Season 16", "created_at"=>"Thu Jan 05 19:21:20 UTC 2012", "description"=>"Indiana Rick finds ancient ruins in Cancun.", "id"=>"781", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-03", "title"=>"Vacation Destinations - Cancun", "updated_at"=>"Tue Jan 10 22:10:37 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"wXZD7s1W", "cached_tag_list"=>"CofE 1998,Episode 4,Season 16", "created_at"=>"Thu Jan 05 19:25:14 UTC 2012", "description"=>"CorVel is in the swing...", "id"=>"783", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-04", "title"=>"Jump, Jive, an' Wail!", "updated_at"=>"Thu Jan 26 18:51:47 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"T6U5GNmJ", "cached_tag_list"=>"CofE 1998,Episode 5,Season 16", "created_at"=>"Thu Jan 05 19:27:09 UTC 2012", "description"=>"A fragrance by Calvin Klein", "id"=>"785", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-05", "title"=>"Obsession", "updated_at"=>"Sat Jan 28 21:15:54 UTC 2012", "views"=>"8", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"CAIXzoV2", "cached_tag_list"=>"CofE 1998,Episode 6,Season 16", "created_at"=>"Thu Jan 05 19:29:04 UTC 2012", "description"=>"Richard takes a dive.", "id"=>"787", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-06", "title"=>"Cancun Sports & Recreation", "updated_at"=>"Fri Jan 13 21:49:29 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"JErMrCci", "cached_tag_list"=>"CofE 1998,Episode 7,Season 16", "created_at"=>"Thu Jan 05 19:31:39 UTC 2012", "description"=>"Gordon needs an answer in 5 seconds.", "id"=>"789", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-07", "title"=>"Got Milk?", "updated_at"=>"Fri Jan 27 18:26:20 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"u55aOklB", "cached_tag_list"=>"CofE 1998,Episode 8,Season 16", "created_at"=>"Thu Jan 05 19:55:17 UTC 2012", "description"=>"Avoid an irate call from Ira Ego with caller ID.", "id"=>"791", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-08", "title"=>"Caller ID", "updated_at"=>"Fri Jan 27 18:31:23 UTC 2012", "views"=>"5", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"C8THukn2", "cached_tag_list"=>"CofE 1998,Episode 9,Season 16", "created_at"=>"Thu Jan 05 20:01:02 UTC 2012", "description"=>"CorVel gets a great seat at the bullfight in Cancun...", "id"=>"793", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-09", "title"=>"\xC2\xA1Ole!", "updated_at"=>"Tue Jan 24 23:21:15 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"H4NlBsIv", "cached_tag_list"=>"CofE 1998,Episode 10,Season 16", "created_at"=>"Thu Jan 05 20:05:24 UTC 2012", "description"=>"Don't leave home without it!", "id"=>"795", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-10", "title"=>"The CorVel Healthcard", "updated_at"=>"Thu Jan 26 21:07:21 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"jzBbv3IY", "cached_tag_list"=>"CofE 1998,Episode 11,Season 16", "created_at"=>"Thu Jan 05 22:15:24 UTC 2012", "description"=>"Technology comes with a price.", "id"=>"797", "location"=>"CorVel", "participants"=>"CorVe", "release_date"=>"1998-01-11", "title"=>"Mastercard", "updated_at"=>"Fri Jan 27 18:30:18 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Fnv83HC8", "cached_tag_list"=>"CofE 1998,Episode 12,Season 16", "created_at"=>"Thu Jan 05 22:19:44 UTC 2012", "description"=>"Don't mess with the shopping experts.", "id"=>"799", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-12", "title"=>"Finding Deals in Cancun", "updated_at"=>"Tue Jan 10 22:33:27 UTC 2012", "views"=>"1", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"xFxarvv1", "cached_tag_list"=>"CofE 1998,Episode 13,Season 16", "created_at"=>"Thu Jan 05 22:41:47 UTC 2012", "description"=>"Just remember these easy numbers...  ...the next time you make a bad call to the boss.", "id"=>"801", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-13", "title"=>"Bad Calls to the Boss", "updated_at"=>"Sat Jan 28 03:42:52 UTC 2012", "views"=>"6", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"oGNQqmAD", "cached_tag_list"=>"CofE 1998,Episode 14,Season 16", "created_at"=>"Thu Jan 05 22:43:55 UTC 2012", "description"=>"The hits continue with \"PPO\" and \"Thanks for the Revenues.\"", "id"=>"803", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-14", "title"=>"More of Gordon Clemons' Greatest Hits", "updated_at"=>"Thu Jan 26 19:25:18 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"jHDNv9u5", "cached_tag_list"=>"CofE 1998,Episode 15,Season 16", "created_at"=>"Thu Jan 05 22:56:25 UTC 2012", "description"=>"Check out the chic finds at the market.", "id"=>"805", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-15", "title"=>"Stylish in Cancun", "updated_at"=>"Thu Jan 26 21:07:33 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Xe4QATY7", "cached_tag_list"=>"CofE 1998,Episode 16,Season 16", "created_at"=>"Thu Jan 05 22:59:10 UTC 2012", "description"=>"Indulge in a tropical tan...", "id"=>"807", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-16", "title"=>"Bain de Soleil", "updated_at"=>"Tue Jan 10 22:34:51 UTC 2012", "views"=>"1", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"vSTY5G06", "cached_tag_list"=>"CofE 1998,Episode 17,Season 16", "created_at"=>"Thu Jan 05 23:01:37 UTC 2012", "description"=>"The CorVel logo is important. How Important?", "id"=>"809", "location"=>"CorVel", "participants"=>"Heather Burnham", "release_date"=>"1998-01-17", "title"=>"Caller ID Reprise", "updated_at"=>"Fri Jan 27 21:25:01 UTC 2012", "views"=>"11", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"lOLNvf6N", "cached_tag_list"=>"CofE 1998,Episode 18,Season 16", "created_at"=>"Fri Jan 06 00:04:33 UTC 2012", "description"=>"Richard gets the unexpected after a miscommunication.", "id"=>"813", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-18", "title"=>"Restaurant Etiquette", "updated_at"=>"Thu Jan 26 18:59:12 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"3Wn9ZIH6", "cached_tag_list"=>"CofE 1998,Episode 19,Season 16", "created_at"=>"Fri Jan 06 00:08:21 UTC 2012", "description"=>"Titanic Too: Shipwrecked at Sea", "id"=>"815", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-19", "title"=>"The Titanic Returns", "updated_at"=>"Thu Jan 26 19:05:25 UTC 2012", "views"=>"5", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"YjAPC4D2", "cached_tag_list"=>"CofE 1998,Episode 20,Season 16", "created_at"=>"Fri Jan 06 00:41:53 UTC 2012", "description"=>"Here are some rules to keep in mind when eating in Mexico.", "id"=>"817", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-20", "title"=>"Three Basic Rules", "updated_at"=>"Mon Jan 23 15:35:49 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Yre5KXpo", "cached_tag_list"=>"CofE 1998,Episode 21,Season 16", "created_at"=>"Fri Jan 06 00:43:36 UTC 2012", "description"=>"In the game of life, there are caddies and there are players.", "id"=>"819", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-21", "title"=>"Da Da Da", "updated_at"=>"Thu Jan 26 19:09:16 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"76YjW5xn", "cached_tag_list"=>"CofE 1998,Episode 22,Season 16", "created_at"=>"Fri Jan 06 00:46:42 UTC 2012", "description"=>"Hits likes \"Thank Heaven For Our Managers\" will keep the party going.", "id"=>"821", "location"=>"CorVel", "participants"=>"Richard Schweppe", "release_date"=>"1998-01-22", "title"=>"Gordon Clemons' Greatest Hits Continues", "updated_at"=>"Mon Jan 30 15:52:05 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"ZzEQtOHo", "cached_tag_list"=>"CofE 1998,Episode 23,Season 16", "created_at"=>"Fri Jan 06 00:48:44 UTC 2012", "description"=>"Beating your boss at golf has no price.", "id"=>"823", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-23", "title"=>"Mastercard Reprise", "updated_at"=>"Thu Jan 26 19:10:37 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"yx7K2SdC", "cached_tag_list"=>"CofE 1998,Episode 24,Season 16", "created_at"=>"Fri Jan 06 00:51:10 UTC 2012", "description"=>"Outtakes from the Circle of Excellence Awards", "id"=>"825", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1998-01-24", "title"=>"1998 Outtakes", "updated_at"=>"Tue Jan 10 23:09:45 UTC 2012", "views"=>"1", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"kJ6EGqDq", "cached_tag_list"=>"CofE 1999,Episode 1,Season 17", "created_at"=>"Mon Jan 09 03:44:54 UTC 2012", "description"=>"A lucky few try to become the next CorVellionaire.", "id"=>"827", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"1999-01-01", "title"=>"Who Wants To Be A CorVellionaire?", "updated_at"=>"Thu Jan 26 20:46:08 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"cohNu6vV", "cached_tag_list"=>"CofE 2001,Episode 1,Season 19", "created_at"=>"Mon Jan 09 03:51:04 UTC 2012", "description"=>"2001 Circle of Excellence Awards Opening", "id"=>"829", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2001-01-01", "title"=>"The Ultimate Survivors", "updated_at"=>"Fri Jan 27 17:42:33 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"WWS3RM0S", "cached_tag_list"=>"CofE 2001,Episode 2,Season 19", "created_at"=>"Mon Jan 09 03:53:49 UTC 2012", "description"=>"How will you build your business? Think it over with a Snickers.", "id"=>"831", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2001-01-02", "title"=>"Snickers", "updated_at"=>"Thu Jan 26 19:59:26 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"1D4iRUqK", "cached_tag_list"=>"CofE 2001,Episode 7,Season 19", "created_at"=>"Mon Jan 09 03:57:19 UTC 2012", "description"=>"More fun than a CareMC demo!", "id"=>"833", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2001-01-07", "title"=>"Mountain Dew", "updated_at"=>"Fri Jan 27 17:30:08 UTC 2012", "views"=>"5", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"zdD9O18b", "cached_tag_list"=>"CofE 2001,Episode 8,Season 19", "created_at"=>"Mon Jan 09 03:59:53 UTC 2012", "description"=>"Having bugs for dinner? Make it with Shake N' Bake.", "id"=>"835", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2001-01-08", "title"=>"Shake N' Bake", "updated_at"=>"Thu Jan 26 22:12:38 UTC 2012", "views"=>"7", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"souHrIha", "cached_tag_list"=>"CofE 2001,Episode 9,Season 19", "created_at"=>"Mon Jan 09 04:01:32 UTC 2012", "description"=>"The greatest boy band of the year is back by popular demand!", "id"=>"837", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2001-01-09", "title"=>"Out of Sync", "updated_at"=>"Fri Jan 27 14:44:23 UTC 2012", "views"=>"9", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"QEPymUAn", "cached_tag_list"=>"CofE 2001,Episode 10,Season 19", "created_at"=>"Mon Jan 09 05:59:35 UTC 2012", "description"=>"Treat your Reoccuring Gordonitis with Cyclo-Clemons G.", "id"=>"839", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2001-01-10", "title"=>"Cyclo-Clemons G", "updated_at"=>"Tue Jan 10 23:14:01 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"5XB4KtZU", "cached_tag_list"=>"CofE 2001,Episode 11,Season 19", "created_at"=>"Mon Jan 09 06:02:34 UTC 2012", "description"=>"See Julia Roberts & Brad Pitt in the romance movie of the year.", "id"=>"841", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2001-01-11", "title"=>"The Mexican", "updated_at"=>"Thu Jan 26 18:49:18 UTC 2012", "views"=>"9", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"cZNkENWy", "cached_tag_list"=>"CofE 2001,Episode 3,Season 19", "created_at"=>"Mon Jan 09 06:05:16 UTC 2012", "description"=>"A special edition Martha Stewart Living show - Survivor episode.", "id"=>"843", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2001-01-03", "title"=>"Martha Stewart Living", "updated_at"=>"Thu Jan 26 19:32:41 UTC 2012", "views"=>"5", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"2HLcIvEz", "cached_tag_list"=>"CofE 2001,Episode 4,Season 19", "created_at"=>"Mon Jan 09 06:17:40 UTC 2012", "description"=>"Who said we need to be rescued?", "id"=>"846", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2001-01-04", "title"=>"Go Away", "updated_at"=>"Tue Jan 10 23:12:19 UTC 2012", "views"=>"1", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"pFxiXBd9", "cached_tag_list"=>"CofE 2001,Episode 5,Season 19", "created_at"=>"Mon Jan 09 06:20:42 UTC 2012", "description"=>"...The Greatest Lip Syncs of the '60s, '70s & '80s.", "id"=>"848", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2001-01-05", "title"=>"KTEL Presents...", "updated_at"=>"Tue Jan 10 23:12:43 UTC 2012", "views"=>"1", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"JDTMVlp8", "cached_tag_list"=>"CofE 2001,Episode 6,Season 19", "created_at"=>"Mon Jan 09 06:23:30 UTC 2012", "description"=>"Batteries sold separately. Advocacy not included.", "id"=>"850", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2001-01-06", "title"=>"CorVel Action Figures", "updated_at"=>"Tue Jan 31 03:33:01 UTC 2012", "views"=>"3", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"3xsbxyIC", "cached_tag_list"=>"CofE 2001,Episode 12,Season 19", "created_at"=>"Mon Jan 09 06:29:12 UTC 2012", "description"=>"Outtakes from the Circle of Excellence Awards", "id"=>"852", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2001-01-12", "title"=>"2001 Outtakes", "updated_at"=>"Tue Jan 10 23:14:35 UTC 2012", "views"=>"1", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Q7vpS0X0", "cached_tag_list"=>"CofE 2002,Episode 1,Season 20", "created_at"=>"Mon Jan 09 18:44:03 UTC 2012", "description"=>"2002 Circle of Excellence Awards Opening", "id"=>"854", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2002-01-01", "title"=>"The Road to Success", "updated_at"=>"Tue Jan 10 23:15:01 UTC 2012", "views"=>"1", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"6y2bKUtN", "cached_tag_list"=>"CofE 2002,Episode 2,Season 20", "created_at"=>"Mon Jan 09 18:46:32 UTC 2012", "description"=>"\"Ready to Run\" by the Pixie Chicks", "id"=>"856", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2002-01-02", "title"=>"Ready to Run", "updated_at"=>"Thu Jan 26 19:34:01 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"8uaAMHK7", "cached_tag_list"=>"CofE 2002,Episode 3,Season 20", "created_at"=>"Mon Jan 09 18:48:49 UTC 2012", "description"=>"Gordon has a great idea.", "id"=>"858", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2002-01-03", "title"=>"Fed Ex Stolen Idea", "updated_at"=>"Fri Jan 27 18:17:32 UTC 2012", "views"=>"10", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"5ukaSY8f", "cached_tag_list"=>"CofE 2002,Episode 4,Season 20", "created_at"=>"Mon Jan 09 18:51:14 UTC 2012", "description"=>"Can you spot the tourist?", "id"=>"860", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2002-01-04", "title"=>"How You Doin?", "updated_at"=>"Thu Jan 26 18:51:03 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"N382CAD2", "cached_tag_list"=>"CofE 2002,Episode 5,Season 20", "created_at"=>"Mon Jan 09 18:53:59 UTC 2012", "description"=>"Tune in for a special CTN report on the weather.", "id"=>"862", "location"=>"", "participants"=>"CorVel", "release_date"=>"2002-01-05", "title"=>"Channel 1 CorVel Town News", "updated_at"=>"Thu Jan 26 19:30:06 UTC 2012", "views"=>"4", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"zxJFiSgU", "cached_tag_list"=>"CofE 2002,Episode 6,Season 20", "created_at"=>"Mon Jan 09 18:57:50 UTC 2012", "description"=>"How men shop for that special anniversary", "id"=>"864", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2002-01-06", "title"=>"True", "updated_at"=>"Tue Jan 10 23:17:18 UTC 2012", "views"=>"1", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"9pg2V1tf", "cached_tag_list"=>"CofE 2002,Episode 7,Season 20", "created_at"=>"Mon Jan 09 18:59:48 UTC 2012", "description"=>"How do you break the news to the counting sheep?", "id"=>"866", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2002-01-07", "title"=>"Serta", "updated_at"=>"Thu Jan 26 19:24:11 UTC 2012", "views"=>"5", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"A7TIy4v1", "cached_tag_list"=>"CofE 2002,Episode 8,Season 20", "created_at"=>"Mon Jan 09 19:07:21 UTC 2012", "description"=>"Would you like a chocolate on your pillow?", "id"=>"868", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2002-01-08", "title"=>"Turndown Service", "updated_at"=>"Thu Jan 26 19:04:15 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"JLiBpD9a", "cached_tag_list"=>"CofE 2002,Episode 9,Season 20", "created_at"=>"Mon Jan 09 19:28:35 UTC 2012", "description"=>"Channel 1 CTN Sports", "id"=>"870", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2002-01-09", "title"=>"CorVel Town News Sports", "updated_at"=>"Thu Jan 26 18:44:23 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"mevtHbzQ", "cached_tag_list"=>"CofE 2002,Episode 10,Season 20", "created_at"=>"Mon Jan 09 19:30:47 UTC 2012", "description"=>"Milk & chocolate syrup is a classic.", "id"=>"872", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2002-01-10", "title"=>"Got Chocolate Milk?", "updated_at"=>"Thu Jan 26 19:56:22 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"Pba6sbNr", "cached_tag_list"=>"CofE 2002,Episode 11,Season 20", "created_at"=>"Mon Jan 09 19:32:49 UTC 2012", "description"=>"An important message gets lost in translation.", "id"=>"874", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2002-01-11", "title"=>"Sprint", "updated_at"=>"Wed Jan 18 22:19:43 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"TDpEJsz8", "cached_tag_list"=>"CofE 2002,Episode 12,Season 20", "created_at"=>"Mon Jan 09 19:35:03 UTC 2012", "description"=>"The Smart Clapper makes turning on your computer a cinch.", "id"=>"876", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2002-01-12", "title"=>"The Clapper", "updated_at"=>"Tue Jan 10 23:19:02 UTC 2012", "views"=>"1", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"BVAU87HX", "cached_tag_list"=>"CofE 2002,Episode 13,Season 20", "created_at"=>"Mon Jan 09 19:36:54 UTC 2012", "description"=>"You are what you eat.", "id"=>"878", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2002-01-13", "title"=>"NutriGrain", "updated_at"=>"Thu Jan 26 19:01:06 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"YRM645vS", "cached_tag_list"=>"CofE 2002,Episode 14,Season 20", "created_at"=>"Mon Jan 09 19:38:41 UTC 2012", "description"=>"I want my baby back...ribs.", "id"=>"880", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2002-01-14", "title"=>"Chili's", "updated_at"=>"Sat Jan 28 03:42:25 UTC 2012", "views"=>"5", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"BRpktyPY", "cached_tag_list"=>"CofE 2002,Episode 15,Season 20", "created_at"=>"Mon Jan 09 19:39:52 UTC 2012", "description"=>"Outtakes from the Circle of Excellence Awards", "id"=>"882", "location"=>"CorVel", "participants"=>"CorVel", "release_date"=>"2002-01-15", "title"=>"2002 Outtakes", "updated_at"=>"Thu Jan 26 18:56:12 UTC 2012", "views"=>"2", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"WptzgLC6", "cached_tag_list"=>"tag required", "created_at"=>"Tue Jan 24 23:34:01 UTC 2012", "description"=>"description needed WptzgLC6", "id"=>"888", "location"=>nil, "participants"=>"participants needed", "release_date"=>nil, "title"=>"title needed WptzgLC6", "updated_at"=>"Tue Jan 24 23:34:01 UTC 2012", "views"=>"0", "likes_count"=>"0"})
v.user_id = u.id
v.save!
v = c.videos.create({"approved"=>"true", "botr_video_key"=>"qL7Ob2yF", "cached_tag_list"=>"CCTV,Connected TV", "created_at"=>"Tue Jan 24 23:46:47 UTC 2012", "description"=>"The CorVel Boston office knows how to win over their customers.  When it comes to building strong customer relationships, this office provides national service with a local touch.", "id"=>"889", "location"=>"Acton, MA", "participants"=>"CorVel's Boston Office", "release_date"=>"2012-01-24", "title"=>"CorVel Boston", "updated_at"=>"Tue Jan 31 21:26:59 UTC 2012", "views"=>"777", "likes_count"=>"23"})
v.user_id = u.id
v.save!
    
  end

  def self.down
  end
end
