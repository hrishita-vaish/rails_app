class NewscategoryController < ApplicationController
  require 'simple-rss'
  require 'open-uri'

def index
  @rss = SimpleRSS.parse open("http://rss.cnn.com/rss/cnn_latest.rss")
  @rssp = SimpleRSS.parse open("http://feeds.hindustantimes.com/HT-HomePage-TopStories")
  @rssb = SimpleRSS.parse open("http://rss.cnn.com/rss/edition_business.rss")
  @rsssp = SimpleRSS.parse open("http://rss.cnn.com/rss/edition_sport.rss")
end
 
  def latestnews_page
  	#url = "http://timesofindia.feedsportal.com/c/33039/f/533965/index.rss"
  	#@rss = SimpleRSS.parse open("http://timesofindia.feedsportal.com/c/33039/f/533965/index.rss")
   # @rss = SimpleRSS.parse open("http://rss.cnn.com/rss/edition.rss")
    # @rss = SimpleRSS.parse open("http://zeenews.india.com/rss/india-national-news.xml")
  	#p "RSS is  -------- #{@rss.inspect}"
  	#@rss
  		#@rss.items.each do |r| 
		#@headline = r.try(:title) 	
		#end
  end

  def popularnews_page
  	#url =  "http://timesofindia.feedsportal.com/c/33039/f/533972/index.rss"
	#@rss = SimpleRSS.parse open("http://timesofindia.feedsportal.com/c/33039/f/533972/index.rss")
  end

  def businessnews_page
  	#url = "http://timesofindia.feedsportal.com/c/33039/f/533919/index.rss"
  #	@rss = SimpleRSS.parse open("http://timesofindia.feedsportal.com/c/33039/f/533919/index.rss")
  end

  def sportsnews_page
  	#url = "http://timesofindia.feedsportal.com/c/33039/f/533921/index.rss"
  #	@rss = SimpleRSS.parse open("http://timesofindia.feedsportal.com/c/33039/f/533921/index.rss")
  end

   def description
 	 @hd ,@rsss, @a_link = params[:hl] ,params[:rss] ,params[:al]
  end
end