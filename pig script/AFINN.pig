Dictionary = LOAD 'hdfs://localhost:9000/pig/AFINN.txt' using PigStorage('\t') AS(word:chararray,rating:int);
dump Dictionary;

