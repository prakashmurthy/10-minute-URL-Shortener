require "sinatra"

get %r{^/([0-9a-zA-Z]+)$} do  
    postid = params[:captures][0].to_i(36)  
    redirect "http://zero2railshero.tumblr.com/?p=#{postid}", 301  
end 

get "/*" do  
    path = params["splat"]  
    redirect "http://zero2railshero.tumblr.com/#{path}", 301  
end 
