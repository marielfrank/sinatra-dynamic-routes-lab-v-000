require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name].reverse
    @name
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase].gsub("%20", " ")
    final_phrase = ""
    @number.times {final_phrase += "#{@phrase} "}
    final_phrase.strip
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    [@word1, @word2, @word3, @word4, @word5].join(" ")
  end

  get "/:operation/:number1/:number2" do

  end

end
