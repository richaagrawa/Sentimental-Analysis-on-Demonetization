extract_details = FOREACH load_tweets GENERATE $0 as id,$1 as text;  
dump extract_details;

tokens = foreach extract_details generate id,text, FLATTEN(TOKENIZE(text)) As word; 
dump tokens;
