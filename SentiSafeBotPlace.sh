rm hypothetical_output1.txt 

rm hypothetical_test1.txt 

echo "Please enter your hypothetical place:"

read in 


echo $in>>hypothetical_test1.txt


python SentimentTest-place.py


echo "Your place:" >> hypothetical_output1.txt
 cat hypothetical_test.txt >> hypothetical_output1.txt

echo  "-------------------------------------------------------------------------------------------" >> hypothetical_output.txt

echo "If you go now," >> hypothetical_output1.txt

echo "Crimerate is " >> hypothetical_output1.txt

python mainModel.py crimepattern.csv 1 crimepattern_pred.csv crimepattern.png hypothetical_sentiment.csv hypothetical_output.txt 1000 1



gsutil cp -r crimepattern_pred.csv gs://argon-fx-191617


clear


cat hypothetical_output1.txt


