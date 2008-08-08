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