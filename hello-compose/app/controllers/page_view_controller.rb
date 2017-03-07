class PageViewController < ApplicationController
  def count
    @page_counter = $redis.incr("pageview_count").to_i
  end
end
