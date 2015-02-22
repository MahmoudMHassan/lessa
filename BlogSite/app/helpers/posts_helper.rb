module PostsHelper
 def islink? url
  if (/http|https|www/.match(url))
  return true
  else
  return false
  end
end

 def whichlink url
  
  if url.include?("youtube")
    auto_html(url) {youtube}
  elsif url.include?("soundcloud")
    auto_html(url) {soundcloud}
  elsif url.include?("dailymotion")
    auto_html(url) {dailymotion}
  elsif url.include?("vimeo")
    auto_html(url) {vimeo}
  elsif url.match(/jpg|png|gif|bmp|jpeg/)
    auto_html(url) {image}
  else auto_html(url) {link :target => "_blank", :rel => "nofollow"}
  end
end

    def url_matching url
        if (islink? url)
          return whichlink url
        else
        return url
      end
      
    end
  end
