# Write your code here. 
#GitHub Link: https://github.com/kellyx1636/05-string-shortener-lab  

def dictionary()   #Hash is put into a method so that it can be called? 
    dictionary = {
    "hello" => "hi", 
    "to" => "2", 
    "two" => "2", 
    "too" => "2", 
    "for" => "4", 
    "four" => "4", 
    "be" => "b", 
    "you" => "u", 
    "at" => "@", 
    "and" => "&"
}
end

def word_substituter(string)
    string.split.map do |characters| #splits the text --> put it into a new array 
    if dictionary.keys.include?(characters.downcase) #checking if string has lowercase; case sensitivity 
        characters = dictionary[characters.downcase] #
    else 
        characters #no downcases --> just return it 
    end
    end.join(" ") #puts the characters back into a word 
 end
 
 def bulk_tweet_shortener(tweets)
     tweets.each do |tweet|
         puts word_substituter(tweet)
     end
 end
  
 def selective_tweet_shortener(tweets) #checks the length of tweet  
    if tweets.length > 140 # if length > 140, put it into the other method to shorten it with substitutions  
        word_substituter(tweets)
    else
        tweets #or leave as it is 
    end
 end
 

