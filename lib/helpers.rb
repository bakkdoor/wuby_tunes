# redirect to a given url in a specified time
def redirect(options = {})
  @url = options[:url] ||= "/"
  @time = options[:time] ||= 0
  
  "<META HTTP-EQUIV=REFRESH CONTENT=\"#{@time}; URL=/\">"
end  

# little date enhancements...
class Date
  # defines a date in german-style
  def german()  
  		date_split = self.to_s.split("-")

  		day = date_split[2]
  		month = date_split[1]
  		year = date_split[0]
		
  		"#{day}.#{month}.#{year}"
  end
  
  def english
    date_split = self.to_s.split("-")

		day = date_split[2]
		month = date_split[1]
		year = date_split[0]
	
		"#{month}.#{day}.#{year}"
  end
end