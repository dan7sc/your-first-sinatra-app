require "sinatra"

get "/" do
	erb :home
end

get "/about" do
	erb :about
end

get "/greet/:name" do
    name = params[:name].capitalize
    "Hello there #{name}"
end

get "/greet/:first/:last" do
    "Hello there #{params[:first]} #{params[:last]}!"
end

get "/square/:number" do
    num = params[:number].to_i
    puts "#{num.class}"
    if num or num == 0
      "#{num * num}"
    else
      "that's not a number!"
    end
end

get "/sinatra" do
      "<h3>I love <a href='http://www.sinatrarb.com/'>Sinatra!</a></h3>"
end

get "/mycat" do
      send_file "views/cat.html"
end

get "/cat" do
      erb :cat
end

get "/time" do
      erb :time
end

get "/secret" do
	"You found the secret page!!! shhhhhh!!!!"
end
