class Background
  attr_reader :id


  def initialize(json)
    @image = json[:results][0][:urls][:raw]
    @author = json[:results][0][:user][:name]
    @logo = "no logo found"
    @url = "https://unsplash.com/"
  end

  def credit
     {
       "source": @url,
       "author": @author,
       "logo": @logo
     }
  end

end
