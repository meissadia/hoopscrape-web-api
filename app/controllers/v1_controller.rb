class V1Controller < ApplicationController
  before_action :set_id

  def teams
    render json: @hs.teamList
  end

  def player
    render json: @hs.player(@id)
  end

  def schedule
    render json: @hs.schedule(@id)
  end

  def roster
    render json: @hs.roster(@id)
  end

  def boxscore
    render json: @hs.boxscore(@id)
  end

  def index
    render template: 'public/index.html'
  end

  private

  def set_id
    @id = params[:id]
    @hs = HoopScrape.new(format: :to_hashes)
  end
end
