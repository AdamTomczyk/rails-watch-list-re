class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    #Body coming from input form
    @bookmark = Bookmark.new(bookmark_params)

    #Fetching from the url
    @list = List.find(params[:list_id])

    #Reassinging the fetched id to match list id
    @bookmark.list = @list

    #Making a database entry / new instance of bookmark
    @bookmark.save

    redirect_to list_path(@list)
  end

private

def bookmark_params
  params.require(:bookmark).permit(:comment, :movie_id)
end

end
