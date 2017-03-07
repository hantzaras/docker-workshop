class PageViewController < ApplicationController
  def count
  @page_counter = $redis.get("pageview_count").to_i
  if @page_counter.nil?
    @page_counter = 0
  end
  @page_counter += 1
  $redis.set("pageview_count", @page_counter)
  end
end
