require 'launchy'

def google_searcher
    if ARGV.empty?
        puts "Input your google search!"
        exit
    else
        result = ARGV.join('+').delete('"')
        Launchy.open("https://www.google.com/search?q=#{result}")
    end
end

google_searcher