#This shell script accomplishes three tasks. First, the gender and years of experience combinations are returned in a separate file from the original. 
# 

cat wages.csv | cut -d , -f 1,2 | sort -k1,1d -k2,2n -t , | uniq | sed 's/,/ /g' | grep -E male > sortedwages.txt

#highest wage earner
cat wages.csv | cut -d , -f 1,2,4 | sort -k 3,3n -t , | tail -n 1
#lowest wage earner
cat wages.csv | cut -d , -f 1,2,4 | sort -k 3,3n -t , | head -n 2
#number of females in top ten earners
cat wages.csv | cut -d , -f 1,2,4 | sort -k 3,3n -t , | tail -n 10 | grep female | wc -l

