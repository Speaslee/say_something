require "sinatra/base"
require "json"
require "pry"

Available_voice = File.read "./voices.txt"
Possible_voice = Available_voice.split
Allowed_chars = ("a".."z").to_a + [" "]

class Howdy < Sinatra::Base
  set :logging, true

  get "/talk_nerdy_to_me/:voice/" do
    words = params[:phrase] || "Can you hear me now"

    if words.downcase.chars.all? { |c| Allowed_chars.include? c } == false
      status 400
      system "say -v Whisper I cant read that remove punctuation please"
    end

    voice = params[:voice] || "Whisper"
    if Possible_voice.include? voice
      system "say -v #{voice} #{words}"

    else
      status 400
      system "say -v Whisper not a valid voice"
    end
  end

end

Howdy.run!
