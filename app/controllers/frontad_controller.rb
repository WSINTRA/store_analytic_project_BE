class FrontadController < ApplicationController

skip_before_action :authorized, only: [:index]
	def index
     frontAd = Frontad.last
     render json: frontAd
	 end

	 def create
	 	detail = params[:detail]
	 	banner = params[:banner]
	 	side = params[:side]
	 	video = params[:video]
	 	Frontad.create(banner_url: banner, side_url: side, details: detail, video_url: video)
	 	frontAd = Frontad.last
        render json: frontAd
	 end



end
