class V1Controller < ApplicationController
  before_action :set_id
  before_action :set_env

  def teams
    if @demo
      render json: JSON.parse(File.read('public/demo/teams.json'))
    else
      render json: @hs.teamList
    end
  end

  def player
    if @demo
      render json: JSON.parse(File.read('public/demo/player.json'))
    else
      render json: @hs.player(@id)
    end
  end

  def schedule
    if @demo
      render json: JSON.parse(File.read('public/demo/schedule.json'))
    else
      render json: @hs.schedule(@id)
    end
  end

  def roster
    if @demo
      render json: JSON.parse(File.read('public/demo/roster.json'))
    else
      render json: @hs.roster(@id)
    end

  end

  def boxscore
    if @demo
      render json: JSON.parse(File.read('public/demo/boxscore.json'))
    else
      render json: @hs.boxscore(@id)
    end
  end

  def index
    render template: 'public/index.html'
  end

  private

  def set_id
    @id = params[:id]
    @hs = HoopScrape.new(format: :to_hashes)
  end

  def set_env
    @demo = ENV['HS_DEMO']
  end

end
