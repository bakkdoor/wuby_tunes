require 'rubygems'
require 'rbosa'

# redirect to a given url in a specified time
def redirect(options = {})
  @url = options[:url] || "/"
  @time = options[:time] || 0
  
  "<META HTTP-EQUIV=REFRESH CONTENT=\"#{@time}; URL=#{@url}\">"
end  

def app
  OSA.app 'iTunes'
end

def current_song
  app.current_track
end

def has_cover?
  current_song.artworks.length > 0
end

def minutes
  current_song.duration.div(60)
end

def seconds
  (current_song.duration - minutes*60).ceil
end

def cover_data
  current_song.artworks[0].data
end



# little date enhancements...
class Date
  # defines a date in german-style
  def german()
    prepare
  	"#{@day}.#{@month}.#{year}" 
  end
  
  def english
    prepare
		"#{@month}.#{@day}.#{year}"
  end
  
  private
  def prepare
    @day = day < 10 ? "0#{day}" : day
		@month = month < 10 ? "0#{month}" : month
  end
end