class DeleteOldPosts < ActiveRecord::Base
  post_ids = Post.find(:all, :conditions => ["created_at < ?",5.minutes.ago])
  if post_ids.size > 0
    Post.destroy(post_ids)
    puts "#{post_ids.size} posts have been deleted!"
  end
  
end
  