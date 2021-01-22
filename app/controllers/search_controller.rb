class SearchController < ApplicationController
  def index
    if params[:kind].to_i==2
      @lists=Machine.where('name LIKE ?', '%'+params[:content]+'%')
      @type="機器の検索"
      # binding.pry
    else
      @lists=Box.where(kind: params[:kind]).where('name LIKE ?', '%'+params[:content]+'%')
      @type="変電所や分電盤の検索"
    end
      @info=params[:content]
  end

end
