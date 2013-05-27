class GalleriesController < ApplicationController

  Gallery = Struct.new(:title, :images_count)

  respond_to :json

  def index
    @galleries = [
                   Gallery.new('Taiwan 2013', 11111 ),
                   Gallery.new('Hong Kong 2013', 55 )
                 ]
    respond_with @galleries
  end

end
