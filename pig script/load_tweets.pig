load_tweets = LOAD 'hdfs://localhost:9000/pig/demonetization-tweets.csv' USING PigStorage(','); 
dump load_tweets;

