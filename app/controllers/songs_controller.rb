class SongsController < ActionController::Base

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_attributes)
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  def show
    
  end

  def index
    
  end

  private

  def song_attributes
    params.require(:song).permit(:title, :artist_name, :release_year, :released, :genre)
  end
end
