module ApplicationHelper
	def title
		t_base = t("titles.base")
		t_separator = "|"
		if @title.nil?
			t_base
		else
			"#{@title} #{t_separator} #{t_base}"
		end
	end

	def random
		@random_news = New.moderated.find(:first, :offset => rand(New.moderated.count))
		if !@random_news.nil?
			render :partial => "modules/random", random_news: @random_news
		end
	end

	def copyright
		render :partial => "modules/copy"
	end

	def recent
		@recent_news = New.recent
		# result = @recent_news.content_full.scan(/<img[^>]+/i)
		render :partial => "modules/recent", recent_news: @recent_news
	end

	def logout
		render :partial => "modules/logout"
	end

	def login
		render :partial => "modules/login"
	end
end