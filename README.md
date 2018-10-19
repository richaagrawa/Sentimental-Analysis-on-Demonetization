# Sentimental-Analysis-on-Demonetization 
Sentimental Analysis is about computationally identifying and categorizing opinions expressed in a piece of text, especially in order to determine whether the writer's attitude towards a particular topic, product, etc. is positive, negative, or neutral.
<br />
Views of different people on the demonetization by analyzing the tweets from twitter is obtained.
 
 
## Steps to be followed:

1.Make a directory in HDFS Storage as 'pig' where all data is to be stored.
	 
	hadoop fs -mkdir /pig

2.Load Demonetization-tweets.csv file into HDFS Storage.
	
	hadoop fs -put /home/richa/Desktop/demonetization-tweets.csv /pig

3.Open the Grunt Shell 
	
	pig

## Execute all the following command on grunt shell:	 

4.Load the data into pig using PigStorage and see the tweets loaded by executing following command:

	run /home/richa/Desktop/load_tweets.pig

5.Extract the id and the tweet_text then Divide the tweet_text into words to calculate the sentiment of the whole tweet.
   For every word in the tweet_text, each word will be taken and created as a new row
   The dump command is used to check the same.To execute the same run the following command:
   
   	run /home/richa/Desktop/details_token.pig
	
6.To analyse the Sentiment for the tweet by using the words in the text. We will rate the word as per its meaning from +5 to -5 using the dictionary AFINN. The AFINN is a dictionary which consists of 2500 words which are rated from +5 to -5 depending on their meaning.
## load AFINN Dictionary into HDFS Storage by following command:
	
	hadoop fs -put /home/richa/Desktop/AFINN.txt /pig

7.Load the dictionary into pig by using the below statement:

	run /home/richa/Desktop/AFINN.pig

8.filter the tweets as by running script.pig: 
	
	run /home/richa/Desktop/script.pig
