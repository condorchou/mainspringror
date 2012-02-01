class ImportCorvelCommentsAndRatings < ActiveRecord::Migration
  def self.up

client = Client.find_by_handle('corvel')

begin
  row = ["video_id", "user_id", "body"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Pam McConnell", "Very cool!  Totally connected!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Stephanie Spiropoulos", "Love this!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Marcia Long", "Very hip and innovative - I love it!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Michele Tucker", "Would be great to do this at some of our other offices also!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Luz Neighoff", "Love it!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Anna Morales", "Like it! :)"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Joe Barger", "awesome!!!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Peggy McGahagan", "I had trouble with the video pausing very frequently. I am not sure if it was due to being a remote broadband user or what. Otherwise, it had a good message and the people did a great job."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Christina Johns", "As a case manager, working out of home, its great to see there is LIFE on the outside!  Great video!  Love what the company is doing these days!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Raquel Hightower", "Very nice!!!  Also, great art work.  Thank you for sharing."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Gail Merced", "Love the hat on the wall..great art deco touch! As a field CM working from home ...good to see the Corporate Irvine office has great sense of humor..laughter makes everything go more smoothly...Gail Merced, Acton MA."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Amy Sherbenou", "That was clever and funny.  It is wonderful to work for a company that works hard and has fun at the same time!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Sean Smith", "Nicely done!  Having not been there a glimpse of the environment is nice.  Now how far to the beach!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Shelia Jones", "Love the artwork!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Marissa Howell", "I have always wondered what the headquarters looked like, now I know. Mystery solved. Enjoyed it."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Carolyn Chenault", "I enjoyed being able to put a face with a name. Keep up the great job.  Thank you for keeping me connected."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Angela Braddock", "Awesome video!  I always wondered what the corporate office looked like and now I have had a tour.  Nice place and it's wonderful to work for such an awesome employer!  It's nice to be able to put a face with some of the names that I have heard for years.  Thanks for keeping us all connected!!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Molly Jones", "Fun and informative video. Just what I needed for a quick break this afternoon. Loved the 8 ball and dart target for props ! It is fun working at CorVel."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Donna Foley", "Love this!!  Thanks for sharing.  The hat artwork is great, hopefully we will all be able to afford a whole hat with all our hard work and dedication!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Kimberly Mauldin", "I love the creative and upbeat side of CorVel!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Ed Burtnette", "This must have been the day I tried to get through to Trevor for hours on some pricing. Just kidding good job all! As usual you keep us entertained in the field taking some of the stress out of our work day."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Margaret Kerr-Armour", "I love this video! Hilarious! It's nice to see a realistic view of what goes on in the corporate office."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Diane Mortenson", "Hilarious, very clever!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Vicki Rottman", "Very Nice! Creative!  I'm not surprised that RFP team remained busy throughout the video!  They're awesome!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Treva Overstreet", "Always love CorVel videos!  Great job by the corporate team!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Abby Mittelmann", "Really funny!  Nice job."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Becky Glidden", "Good Job! Great way to inform people of the true ways the corporate office works!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Colleen O'Halloran", "I am so proud to be part of the CorVel family.  The perfect balance of humor and professionalism.  Aloha to all."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["bjKa5B0O", "Patty Strup", "Nice to be part of CorVel family!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Stacee Showalter", "Just started our renovation!  Really looking forward to the new decor & cubes!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Rita DeDominic", "Difficult to be honest w/comments when your name is captioned w/the comment. We should be able to mail comments to you unsigned so that people will be honest and you receive a larger response regarding office standards."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Martha Cox", "I agree with Rita from PA"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Keri Wienski", "I personally do not like the new dress code.  We spend all winter, here in Downers Grove, all bundled up.  Its nice to be able to dress a little more casual in the Summer.  We never get introduced or see anyone from the public!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Georgia Bailey", "I agree with Rita from PA only in Florida, the minute you step out of your office you sweat. There are so  many sandals available  in the marketplace that are very professional in appearance.   It would be nice, as a field case manager, who are always coming and going inside  and out to be comfortable from head to toe."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Gwen Henson", "Unable to view video."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Melissa Comstock", "I don't mind the changes to the Mon-Thur dress code but stopping jeans on Friday seems uptight.  Most publicly traded national companies have a casual Friday dress code."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Gwen Henson", "Since I am unable to view the video and I have seen the examples of unacceptable attire via e-mail my only comment is for the ladies especially here in the Dublin Office we do not see anyone at this site especially management or visitors it would be nice if we could at least wear sandals, not flip flops but a real sandal and still be able to look professional while abiding by the company dress code. I believe this can be done in a professional manner.  Up until recently this was allowed and those of us that have been here had to totally change our wardrobe regarding the dress policy but we never received any complaints regarding our attire from anyone."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Robin Thomason", "I have mixed thoughts about the new dress code. I understand why it's necessary, however the weather has already hit triple digits in Texas. I don't agree with sandals representing unprofessionalism. There are many companies that have a relaxed dress code and I don't think these companies are taken less seriously."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Dominic Gaither", "I like the desks in the Orange office.  Is that a standard Corvel desk?"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Lily Laney", "I believe that professionalism is about a person\xE2\x80\x99s demeanor.  I\xE2\x80\x99ve seen professionalism in blue jeans as well as properly-dressed unprofessionalism.  Eliminating casual Friday is extreme."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Dora Grollimund", "I believe that some of the dress code is common sense, as professionals, one should not wear clothes that shows to much cleavage, ripped jeans or halters. However, I think it is stepping WAY over the line when a corporation starts telling you what kind of shoes you can or cannot wear. There are plenty of sandals that look nice and are perfectly appropriate for work. In addition, we very seldom is anyone other that our office mates and as long as you are clean and not inappropriate what difference would it make. I also agree with everyone else that taking away causal Friday's makes no sense and serves no purpose other than to make everyone feel that corporate CorVel is becoming overly restrictive."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Therese Angarone", "With the impact of the economy on employees, even something so simple as \xE2\x80\x9Cjeans day\xE2\x80\x9D brings a little ray of light into our workday (as a side note to the alternatives; paying for my \xE2\x80\x9Cjeans day\xE2\x80\x9D is not something I can afford).  I cannot speak for everyone, but this economy has impacted a lot of us, if not most of us, with that, we are in need of some office morale."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Kim Nelson", "I agree with Rita from PA"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["l9CsuOQ8", "Patty Strup", "As far as dress code. I would never wear sandals at work without hose!! Do think sandals are appropriated that way."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["SptWpaLy", "Lynn Turner", "LOVE IT!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["sxHt1GvR", "Jerilyn Kelly", "Love it! So clever!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["kHOcvtST", "Kendra Johnson", "Too funny - I loved this."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["yLBZavFk", "Linda Thurman", "looks like it was a fun time for those that made it."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["yLBZavFk", "Linda Thurman", "looks like it was a fun time for those that made it."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["oYHJOcub", "Jelyn Potocnik", "Very funny when Mike Donnelly, got thrown away to the window!!!!!!!!!!!!!!!lol!!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["DZOMrPa3", "Norma Turkalp", "Wouldn't it be great if Corvel had a mascot?"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["DZOMrPa3", "Jose Laureano", "I love it, can i get a monkey two?"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["eMNJBGcC", "Nancie Nguyen", "Great coordination I love it!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["P4pAbqDW", "Sean Smith", "LOL~~  Super funny and well done!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["nOytNsZb", "Ann Jones", "so funny!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["tqcy3asO", "Faith Heddings", "hair..larious"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["2dnUIZ0d", "Norma Turkalp", "Where's my \"like\" button here."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["RHuhLwUv", "Norma Turkalp", "I love this!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["FJ8KtRTR", "Norma Turkalp", "Great rap!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["id5wlWbr", "Norma Turkalp", "this was great!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Dianne Sallas", "This is okay."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Abby Mittelmann", "So nice to see my friends in Minnie-sooota!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Joe Barger", "Awesome!  I like the bottle of TUMS sitting on the Professional Review Nurse\"s desk...LOL  Mike, I think you could replace Regis..."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Teresa Lynn", "Great Job!!  Congrats!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Shelly Flatten", "That was great fun!  Nice to put a fact to the people that I talk to!  Love the monkey's Deb!  Shelly"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Kim Leetzow", "I finally got to meet Jan Meron after all these years!  Great job everyone!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Terry McCall", "Was great to see the historical secrets of CorVel in MN. Great job!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Terri Warren", "Great background information.  Thanks."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Lisa Hoch", "i noticed the tums bottle  as well ..nice touch with the nurse !!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Becky Glidden", "Good to know about some of Corvel's history!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Yvonne Mclin", "I definitely learned some historical facts from watching the video that I did not know about CorVel...and am proud to be a part of this great company."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Lauren Ott", "Deb- great job! Will that \"ask a nurse\" work weekends???? I have a job for her..."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Patty Strup", "Nice to know history. Very interesting!!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Patty Strup", "Very intersting to know history"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Lawana Hudley", "Mike did a nice job! It was also nice to put faces with names I see from time to time."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Heather Burnham", "Scott Sexton was a great camera man!  Thanks to the Minneapolis team for being one of the first to create a webisode for Connected TV."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Tammy DeVries", "Loved the pop-up factoids!  Super fun to see all you guys on camera too!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Greta Sandoval", "I used to be from northern Iowa and smiled with all of the pop-up's about Minnesota! Good Job!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Karen von Reichmuth", "Very cute!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Jennifer Brewer", "\"Too funny! I loved it!\""]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["m6WuPHKZ", "Karen Griess", "I enjoy these little shows except for it pauses in the middle of a sentence & I miss some of it."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["D8spUgOH", "Cassie Eades", "I love this commercial. The freeze frame on Brian is hilarious!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Michele Miesner", "Great job on the episode!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Meg Lucas", "Impressive"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Helen Olsen", "Awesome!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Joe Barger", "Excellent!!  Judy and Lauren do an AWESOME job with this product."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Dominic Gaither", "Well done!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Becky Glidden", "Very Beneficial!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Diane Mortenson", "Nice!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Linda Thurman", "informational ... a little heavy on the drama but gets the point across."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Sherre Kahrs", "very succinct and professional"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Kristine Huyck", "This is a great ad!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Kendra Johnson", "Interesting"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Kim Barbour", "This is great! I have forwarded to quite a few prospects"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Angela Braddock", "This is awesome.  Loved it!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Alison Houston", "Well Done!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["iicE8g6U", "Ann Bordeianu", "Great video, I am sending it to a prospect right now!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["jYWgjIU7", "Norma Turkalp", "I like this. So excited to be part of the Connected team!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Dan Davis", "Fabulous video. Love the can do attitude and the growth story which defines life at CorVel."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Sharon Elliott", "The Carolina's: Teamwork made it all come together and stay together."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Loraine Wightman-Evans", "Very original, creative and boy the talent!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Lisa Hoch", "what a great company  with so much employee potential...."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Janet Hall", "This is a wonderful office to work for.  We have a friendly atmosphere and positive people to work with.  Come join us here in the South."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Sharlynn VanTassellBaker", "Awesome video North Carolina.  What a fun way to meet you all!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Sheila Bolt", "Awesome!!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Carmen Hernandez", "Loved seeing lots of friendly faces and the video was awesome!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Dominic Gaither", "Very well done."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Carol Johnston", "I like it, fun interesting and informative, what great singers I love the first girl singing \"I can believe I can fly\" CorVel says \"Yes we can\""]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Mary Jane McCall", "Great energy!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Norma Turkalp", "Well done! Inspired by your enthusiam and energy! Great singing."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Keshia Jervis", "Awesome!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Christina Johns", "Love the ending!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "EugeniaMary Kent", "Loved it, and enjoyed seeing familiar faces.  Nice presentation."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Vanessa Johnson", "Nicely done. Glad to be affiliated with this company for almost 15 years!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Stephanie Yost", "The best place ever to work!!! Wouldn't want to be anywhere else and love to see us grow and prosper!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Dwanda Scott", "I heard the word team used a lot in the presentation after over eight years with CorVel I feel like I am part of not just a team but a family. I have the best co-wokers in the world. I feel really blessed."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Michele Tucker", "I loved this episode!  Looks like a great couple of offices and an awesome team!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["Xo7RWVtg", "Jerilyn Kelly", "awesome! :)"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["EVwCtgxd", "Janine Minichello", "You all are very encouraging to anyone who is trying to lose weight and live a healthy lifestyle. Keep up the great work."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["EVwCtgxd", "Lisa Hoch", "great job inspirational"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["EVwCtgxd", "Traci Moran", "I really liked the exercise equipment in the office."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["EVwCtgxd", "Kim Leetzow", "Nice job Brent, Tammy and the Boise Team!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["efq2s0sp", "Janet Hall", "It is very frustratign watching the video because it keeps loosing connection and a pin wheel shows up in the middle and stops the video.  I just click off it since I don't have the time for the stop and go on this video."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["efq2s0sp", "Terry McCall", "I found it frustrating watching video because of it losing connection after 2 seconds of video. I did not watch all of the  video, due to the interuptions and in view of my own time constraints, but what I did see was very enlightning regarding the outcome of  staff's projects."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["efq2s0sp", "Stephanie Spiropoulos", "You may try closing out other programs you have running before trying to watch it so it doesn\xE2\x80\x99t slow down the video, also you may need to let it load first. Hit play and then pause it and wait for it to finish loading before you play again. Hope this helps! Let me know if your still have trouble! Thanks"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["efq2s0sp", "Jamie Kowalczyk", "It is too difficult to watch due to the  connection problems."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["efq2s0sp", "Karen Lenhart", "I want to watch the video, looks informative, it keeps stopping.  I tried to let it \"load\" as suggested before but the interuptios continued.  Gotta get working!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["efq2s0sp", "Traci Moran", "I found that if I let it run thru once while I did other things, then I watched and it ran smoothly. \r\n\r\nGreat job Gay! I really enjoyed the video!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["efq2s0sp", "Paula Bologna", "can't view the video"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["efq2s0sp", "Kathy Taylor", "It stops every 5 to 10 seconds.  Not viewable!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["efq2s0sp", "Linda Bass", "Love this and so glad I am part of this region!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["efq2s0sp", "Heather Burnham", "If you are having connection problems, please speak to your RSD and submit a work order so we can fully understand and correct  any connectivity issues."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["efq2s0sp", "Abby Mittelmann", "What an awesome video!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["efq2s0sp", "Georgia Stevens", "Love the video! Nice to see such an awesome staff working together!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["efq2s0sp", "Helen Olsen", "Absolutely love it, what spirit!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Gay Wys", "Great job!  FUN!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Stephanie Spiropoulos", "Wonderful job Downers Grove!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Julie Henry", "Excellent!  Great Fun!!  =)"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Pam McConnell", "OMG! LOL, ROF, now on to my IME..."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Pat Whitehill", "Good to see some faces again. Very well put together good job"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Tara Kerz", "Haha!!  Very awesome!!  Bravo, Downers Grove!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Tara Kerz", "Haha!!  Very awesome!!  Bravo, Downers Grove!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Anita Carleton", "Love all the acronyms! Great Job!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Lynn Beasley", "Love it! I was born in Elkhart, IN and have been in the South for the past 30 years now, but I still have that Northern sense of humor....great video!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Kimberly Mauldin", "Love it!!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Joe Barger", "AWESOME JOB!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Lisa Hoch", "OMG we found Dianes true calling we better pay her well dan so we dont lose her to the BIg Lights of Broadway !! i love this"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Juan Pedroza", "Nice!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Lauren Ott", "Hysterical!! DG has talent and singers!!!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["BvOYCho3", "Sydney Finnelly", "Very Good!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["nqvjZRP3", "Linda Bishop", "Awesome!  I smiled all the way through.  We've got a great team!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["nqvjZRP3", "Chris Oliphant", "Amazing! So PROUD of this company!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["nqvjZRP3", "Jennifer Bierly", "Love this episode!  Inspiring!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["nqvjZRP3", "Vanessa Johnson", "The video was very impressive. I'm proud to be part of this company."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["qL7Ob2yF", "Michelle Gingras", "Great clip!!!! Loved it!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["qL7Ob2yF", "Gay Wys", "Love the big room of paper to a gym!  Great job!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["qL7Ob2yF", "Marissa Howell", "Great video, great job!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["qL7Ob2yF", "Abby Mittelmann", "Acton is an awesome office with a great team!!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["qL7Ob2yF", "Joe Barger", "Great Job!  Nice Boston Accent!"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["qL7Ob2yF", "Loraine Wightman-Evans", "Great video. Loved seeing Fenway Paaaak and The Green Monsta."]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end
begin
  row = ["qL7Ob2yF", "Jennifer Brewer", "Loved it!!!  CorVel is all about wellness...nice job on giving our customers space for a gym!  ;)"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[0]).first.id, :user_id => client.users.where(:username => row[1]).first.id, :body => row[2]}
  Comment.create(hash)
rescue
end






begin
  row = ["user_id", "video_id"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Test O' Riley", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Spiropoulos", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Heather Burnham", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cassie Eades", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jennifer Raiche", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Leonor Nunez", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Thang Nguyen", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Suzanne Crane", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Faith Cox", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Tracy Quintero", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Betty Osborn", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jen Doud", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kim Leetzow", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kim Leetzow", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Amanda Pebler", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Dwanda Scott", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Melissa Leddon", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Spiropoulos", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cathy Casil", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brenda Sheppard", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lynn Beasley", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cherish Thompson", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Gordon Clemons", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brett Malikowski", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Joe Barger", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Joe Barger", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Michele Tucker", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Shirley Tirone", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Tony Snyder", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Mindy McDaniel", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Michelle Tarnik", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Nicole Blouin", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Patricia Henderson", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jenny San Martin", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Luz Neighoff", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Luz Neighoff", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ndidi Osigweh", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carmen Hernandez", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Doug Tierney", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carmen Hernandez", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Anna Morales", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Sharon Hubbard", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Janine Salinas", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Karen Griess", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Janine Salinas", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Randy Porco", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Yvette Pryor", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stacee Showalter", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Vin Grillo", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Amanda Garcia", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jackie Johnson", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jackie Johnson", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Christina Johns", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Matthew Sherman", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cindy Gambosh", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jeremy Giscombe", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Raquel Hightower", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Gretchen Myers", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Gretchen Myers", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Tammy Lindt", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ndidi Osigweh", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Mary Jane McCall", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Judith Luebke", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Nanci Lewis", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kathleen Luksic", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Gail Merced", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Renee Englen", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jim Stewart", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Milanka Dukic", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Milanka Dukic", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Heather Reynolds", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Shelia Jones", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Linda Leathers", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Mary Hunt", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Elaine Kirby", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Michael Flacco", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Larry Demery", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lynn Turner", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kendra Johnson", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Terri Borgman", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jennifer Bierly", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Linda Wonn", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Chris Oliphant", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Heather Burnham", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jerilyn Kelly", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Laura Schumacher", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Suzette Guimont", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lavon Hasselbring", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Sharlynn VanTassellBaker", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Donna Foley", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Gay Wys", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Gay Wys", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Susan Bates", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Mark Alberini", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Mark Alberini", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jennifer Sanbet", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ed Burtnette", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Thao Hoang", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Margaret Kerr-Armour", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Toni Clouse", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jasmaine Gilliard", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kalounna Virachith", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["April Cowan", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Judy England", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Judy England", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Steve Munoz", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Patricia Adams", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Amanda McCall", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["KathyJ Powell", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Treva Overstreet", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Juan Pedroza", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Paul Kearney", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stacee Showalter", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cassie Eades", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Spiropoulos", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ashley Waismann", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Allison Geane", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Matthew Sherman", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Sheila Bolt", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Anna Donnelly", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brian Gee", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jaclyn Grigg", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Diane Lowe", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Laura Davis", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Peggy Klein", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Connie Smith", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kaliope Layton", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kimberly Mauldin", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carol Wilkinson", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jerilyn Kelly", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Dustin Baughman", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Milanka Dukic", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carmen Folluo", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Suzette Guimont", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["James Lowery", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Deb Campbell", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carmen Hernandez", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Luz Neighoff", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carl Smith", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kayleigh Mitterholzer", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Debbie Brimm", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jacquelyn Dyce-Hayles", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jenny San Martin", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kim Leetzow", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kathy Farmand", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Amy Nakayama", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Irene Sangalang", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cathy Casil", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Betty Osborn", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Marybeth Bocksel", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Linda Bishop", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Gretchen Myers", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jennifer Garrett", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Scott Sexton", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Julie Dorweiler", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Arlene Chejanovski", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Janyse Arfsten", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kathryn Butkus", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["April Lee", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Tony Nepomuceno", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Nicole Kreider", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Pamela Klesko", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Sharon DeSeure", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Becky Glidden", "l9CsuOQ8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Norma Turkalp", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Peggy McGahagan", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Yvette Pryor", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Elaine Kirby", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lee Anzaldi", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Sharelle Jackson", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jan Barchuk", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Trina Taylor", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Judith Luebke", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kari Altman", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Doug Tierney", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["April Cowan", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lawana Hudley", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Vicki Rottman", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["KathyJ Powell", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["April Lee", "bjKa5B0O"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ann Deon", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carol Johnston", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Mary Sue Simmons", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Mike Donnelly", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Michele Tucker", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Myrna Tapounet", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Heidi Stakis", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Amy Sherbenou", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Chris Oliphant", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Heather Reynolds", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Loraine Wightman-Evans", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Michele Frerichs", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ndidi Osigweh", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jim Stewart", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kim Leetzow", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Danna Nazzarett", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["April Cowan", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Marianne Cuthbertson", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Amy Sherbenou", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Susan Bates", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Judith Luebke", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Dominic Gaither", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Deb Campbell", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Becky Glidden", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kim Barbour", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cheryl Monroe", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Anna Morales", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Marsha Hopkins", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Michele Swearingen", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jenny San Martin", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Sharon DeSeure", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Julie Henry", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ruth Jackson", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Matthew Sherman", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Spiropoulos", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Spiropoulos", "D8spUgOH"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Marsha Hopkins", "kgmcZpzN"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Anna Morales", "ZM17FPCD"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Anna Morales", "d8zbX0Dt"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Anna Morales", "9P1mZvlq"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "kgmcZpzN"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carl Smith", "QEDAOjyh"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "9woyQsqU"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "ttRGTklO"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carl Smith", "tWtrxYI4"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kalounna Virachith", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carl Smith", "akAhL4Ps"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kalounna Virachith", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carl Smith", "kHOcvtST"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Tony Nepomuceno", "mRtAHDaz"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "tWtrxYI4"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "tQovF42Y"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Linda Bishop", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Linda Thurman", "yLBZavFk"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Misty Steed", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Misty Steed", "c17ZpwKu"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Misty Steed", "FaPaIY0C"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jennifer Garrett", "BtrYOb6T"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jennifer Garrett", "rNtZ7fzG"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Patricia Quansah", "detMoDDk"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Patricia Quansah", "akAhL4Ps"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["s.boardroom NA", "VPtU62MW"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jerilyn Kelly", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Alison Houston", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lanette Cassel", "eE9wRgrO"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kendra Johnson", "kHOcvtST"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brenda Austin", "ZM17FPCD"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brenda Austin", "ycilDM8h"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kari Altman", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kari Altman", "jIKh14FN"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brenda Austin", "1C5tLsQD"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kari Altman", "DFBR4Ba8"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brenda Austin", "QEDAOjyh"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brenda Austin", "qAvbrAY4"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brenda Austin", "kgmcZpzN"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brenda Austin", "9P1mZvlq"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brenda Austin", "Sh5QBIWd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brenda Austin", "DZOMrPa3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Test O' Riley", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jackie Johnson", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jackie Johnson", "rNtZ7fzG"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kendra Johnson", "jIKh14FN"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kathryn Butkus", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Matthew Smith", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jan Barchuk", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Janet Gordon", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Tara McGuirl", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jane Smerdell", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Paul Kearney", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jannah Keyes", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kathy Kokosza", "tWtrxYI4"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jane Stevens", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jackie Johnson", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Janet Hall", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Dustin Baughman", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jean Smith", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Diane Hammer", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Gloria Stubbs", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jacqueline Cross", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kathy Farmand", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Betty Hine", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jasmaine Gilliard", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cindy Summerlin", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kristen Hambright", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Terry McCall", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Helene Tolliver", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jennifer Garrett", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Spiropoulos", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Spiropoulos", "RGiaXmg0"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Spiropoulos", "KLilv5Qv"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Spiropoulos", "QGChJyRa"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lee Anzaldi", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Laura White", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ndidi Osigweh", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jim Stewart", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Derek Frost", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cherish Thompson", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Faith Heddings", "tqcy3asO"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["EugeniaMary Kent", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Christina Johns", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Sonya Fearrington", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Doug Tierney", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["s.boardroom NA", "t5AHjkC6"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Joyce Lockhart", "jqu8hoG3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Debra Valencia", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Chuck McCauley", "iicE8g6U"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kristine Bryant", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brenda Austin", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cassie Eades", "D8spUgOH"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cassie Eades", "Oh7wKfI3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cassie Eades", "9P1mZvlq"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cassie Eades", "1C5tLsQD"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Yost", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lynn Beasley", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Desiree Harper", "m6WuPHKZ"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Desiree Harper", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Desiree Harper", "yLBZavFk"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Desiree Harper", "RGiaXmg0"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Tina Varner", "MPqrfDqO"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kelly Powell", "QEDAOjyh"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Shannon Thompson", "QEDAOjyh"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carol Johnston", "NpBEKTJ0"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carol Johnston", "j91RXtKY"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carol Johnston", "Xo7RWVtg"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kathy Farmand", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Tammy Lindt", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Valeria Tuhy", "nOCxGL1j"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kristi Bayer", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Valeria Tuhy", "tWtrxYI4"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Hung Hsieh", "Sh5QBIWd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Charlotte McCleery", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Amy Sheets", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jean Smith", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Traci Moran", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Robin Blocher", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Milanka Dukic", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Spiropoulos", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Rebecca Kincaid", "rXFihVNG"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kim Leetzow", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kim Leetzow", "Oh7wKfI3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kim Leetzow", "0fOVa74y"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ashley Waismann", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["MelissaN Scott", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brent Frazier", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brent Frazier", "ycilDM8h"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brent Frazier", "zemEoZc2"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brent Frazier", "KtP9sG0X"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brent Frazier", "j91RXtKY"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brent Frazier", "0TQiZtco"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brent Frazier", "detMoDDk"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brent Frazier", "0fOVa74y"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brent Frazier", "kgmcZpzN"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Angela Braddock", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jana Thompson", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jenny San Martin", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Anna Morales", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jackie Johnson", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["April Lee", "Qw5CSbZH"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Tacea Sutherland", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Leslie Olmsted", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lucho Huarcaya", "airtTlxB"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Heather Reynolds", "YwoI8yyN"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["April Lee", "airtTlxB"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lawana Hudley", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ndidi Osigweh", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Joe Barger", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Chris Lyons", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Judith Luebke", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Suzette Guimont", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ashley Waismann", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Spiropoulos", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Heather Burnham", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Elaine Kirby", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cari Washington", "YwoI8yyN"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Myrna Tapounet", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Anna Morales", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Maritza Cuevas", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Christina Johns", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Christina Johns", "2pgraPso"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ndidi Osigweh", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "44QK2DrA"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "tqcy3asO"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jenny San Martin", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lynn Turner", "YwoI8yyN"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lora Durante", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Loraine Wightman-Evans", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Consley Jean-Baptiste", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ivette Echevarria", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Eddie Walters", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Tammy Bobbitt", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Sharlynn VanTassellBaker", "BlSS8ZPu"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Connie Smith", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Paul Kearney", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Veronica Flores", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["s.IRCA_Library NA", "efq2s0sp"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Spiropoulos", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ashley Waismann", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Tracy Cooper", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kim Leetzow", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["April Lee", "RHuhLwUv"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kathy Farmand", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Bruce Archer", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Milanka Dukic", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Julie Henry", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Alisa Grady", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jennifer Brewer", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Rebecca Kincaid", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Elaine Kirby", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Tara Kerz", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Mary Kirkley", "0fOVa74y"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["JoAnn DeMarco", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jenny San Martin", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carolyn Moore", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lynn Beasley", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Judy Bystrzycki", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Faith Cox", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Paul Kearney", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "sxHt1GvR"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "HCnIi1XC"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Alison Houston", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lawana Hudley", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jennifer Garrett", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jennifer Garrett", "EVwCtgxd"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Matthew Sherman", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Patrina Miller", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Myrna Tapounet", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cherish Thompson", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ndidi Osigweh", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brent Frazier", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Misty Steed", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jaime Phillips", "IpR74hc3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["s.IRCA_Library NA", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lauren Ott", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kimberly Mauldin", "NpBEKTJ0"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kimberly Mauldin", "BlSS8ZPu"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Test O' Riley", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Brad Graham", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jenny San Martin", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Loraine Wightman-Evans", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Rhonda Coffee", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Spiropoulos", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jennifer Raiche", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ashley Waismann", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jennifer Raiche", "kgmcZpzN"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cassie Eades", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kathy Farmand", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jennifer Ramos", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kir Enoch", "VPtU62MW"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Milanka Dukic", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Melissa Leddon", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Sheila Bolt", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Corrina Urias", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Netty Favila", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carolyn Anderson", "BvOYCho3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Carolyn Anderson", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cheryl Monroe", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kari Altman", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Paul Kearney", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Victoria Roberts-Augustin", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lee Anzaldi", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Mary Walters", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Patzer", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Christina Johns", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lisa Sabye", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Elaine Kirby", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Elaine Kirby", "SptWpaLy"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Betty Osborn", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Janet Joy", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Monique Beale", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Juan Pedroza", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jan Barchuk", "9woyQsqU"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Martha Capista", "tqcy3asO"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Laura Davis", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Amy Sherbenou", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Matthew Sherman", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Joyce Pearson", "QtdXzdtu"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jennifer Brewer", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ndidi Osigweh", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Christina Cordero", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Joyce Conner", "nqvjZRP3"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kim Leetzow", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ann Jones", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Judith Luebke", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Audrey Murphy", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lauren Reid", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Marianne Cardinal", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Michelle Napoli", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lynn Beasley", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Stephanie Spiropoulos", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jhana Spence", "0TQiZtco"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Theresa Rabinek", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Victoria Roberts-Augustin", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Michele Frerichs", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jenny San Martin", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Elaine Kirby", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jeremy Giscombe", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Nanette Soccino", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Lynne Carleton", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Paul Kearney", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Cheryl ODell", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Treva Overstreet", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Matthew Sherman", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Jeff Brock", "pDXyQK7T"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Kim McClimans", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Ndidi Osigweh", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Heather Burnham", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["Test O' Riley", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end
begin
  row = ["DAndria Canas", "qL7Ob2yF"]
  hash = {:video_id => client.videos.where(:botr_video_key => row[1]).first.id, :user_id => client.users.where(:username => row[0]).first.id}
  Like.create(hash)
rescue
end







  end

  def self.down
  end
end
