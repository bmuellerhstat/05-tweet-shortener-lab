 def dictionary
 dictionary = {
   "too" => "2",
   "to" => "2",
   "two" =>"2",
   "four" => "4",
   "for" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
 }
 end
 
 def word_substituter(tweet)
     tweet.split.collect do |word| #goes through each word and makes new array for the words 
         if dictionary.keys.include?(word.downcase) #checks to see matching words (all are lowercase)
             word = dictionary[word.downcase] #makes all the letters lowercase 
         else
            word 
         end
     end.join(" ") #turns array into string and returns that new string 
 end
 
 def bulk_tweet_shortener(tweets)
   tweets.each do |word| #goes through each word
       puts word_substituter(word)
   end
 end
 
def selective_tweet_shortener(tweet)
     if tweet.length > 140 #greater than 140 characters
         word_substituter(tweet) #returns original tweet 
     else
         tweet
     end
end
# string = "My name is Sharon and this is my own example"
# string[0]
# => "M"

# string[0..10]
# => "My name is "
     #spaces and symbols count
     
 def shortened_tweet_truncator(tweet)
   if word_substituter(tweet).length > 140 #greater than 140 characters
     word_substituter(tweet)[0..139] #returns each letter, space, symbol, or other characters from 0-139
   else
     tweet
   end
 end 