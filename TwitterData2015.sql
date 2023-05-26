

--------Lets see the top tweet categorys 

select count (tweet_category)as topcat,tweet_category,tweet_created
From dbo.newyearstwitter
group by tweet_category,tweet_created
order by topcat desc

----Lets now see the top tweet category by state

select   count (tweet_category)as topcat,tweet_category,  tweet_state,tweet_created
From dbo.newyearstwitter
group by tweet_category ,tweet_state,tweet_created
order by tweet_state,topcat desc


------Lets now see the total tweets by gender

Select count (tweet_text) as TWEET_PER_GENDER,User_gender,tweet_created
From dbo.NewYearsTwitter
group by user_gender,tweet_created


----lets now see the total tweets per state 

Select count (tweet_text) as TWEET_PER_STATE,tweet_state
From dbo.NewYearsTwitter
group by tweet_state
order by TWEET_PER_STATE desc

------Lets now see the total tweet per region 

Select count (tweet_region) as TWEET_PER_REGION,tweet_region,tweet_created
From dbo.NewYearsTwitter
Group by tweet_region,tweet_created
order by TWEET_PER_REGION desc

----last lets now see the top topics tweeted

Select   Count (tweet_topics) as TWEET_PER_TOPIC,tweet_topics,tweet_created
From dbo.NewYearsTwitter
Group by tweet_topics,tweet_created
order by TWEET_PER_TOPIC desc











