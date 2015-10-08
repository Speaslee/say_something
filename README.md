
This exercise was an introduction to setting up a Sinatra server with Ruby. 
The server will take text from a request, and say it aloud using the say command. 

Response elements:
   Voice  Will select the voice your computer uses. The default voice is Whisper, but any voice in the standard Mac library should be availabe. 
   Phrase Will be what you're computer says. Do not use punctuation only letters and spaces are accepted.

Request URL   
curl -XGET -d"phrase=:phrase" "http://localhost:45670/talk_nerdy_to_me/:voice"  
