class StartController < ApplicationController

	# before_filter :load_shelf
	
	  def index
	  	@shelves = demo_shelves
	  end
end
