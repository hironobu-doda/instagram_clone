class FavoritesController < ApplicationController

  def index
    @favorites = current_user.favorites
    @favorite = Favorite.last
    # @picture.user_id = current_user.id
  end

  def create
    favorite = current_user.favorites.create(picture_id: params[:picture_id])
    redirect_to pictures_url, notice: "#{favorite.user.name}さんのブログをお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to pictures_url, notice: "#{favorite.user.name}さんのブログをお気に入り解除しました"
  end
end