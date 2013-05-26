require 'rdiscount'

module PostsHelper
	def join_tags(post)
    	post.tags.map { |t| t.name }.join(", ")
  	end

  	def markdown(text)
		markdown = RDiscount.new(text)
		raw markdown.to_html
  	end
end
