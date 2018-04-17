word_rating = join tokens by word left outer, Dictionary by word using 'replicated'; 
dump word_rating;
rating = foreach word_rating generate tokens::id as id,tokens::text as text, Dictionary::rating as rate; 

word_group = group rating by (id,text); 
avg_rate = foreach word_group generate group, AVG(rating.rate) as tweet_rating; 
positive_tweets = filter avg_rate by tweet_rating>=0; 
dump positive_tweets;
negative_tweets = filter avg_rate by tweet_rating<0; 
dump negative_tweets;
 




