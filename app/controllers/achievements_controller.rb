class AchievementsController < ApplicationController
  def new
    @achievement = Achievement.new
  end

  def create
    @achievement = Achievement.new(achievement_params)
    if @achievement.save
      redirect_to achievement_url(@achievement), notice: 'Achievement has been created'
    else
      render :new
    end
  end

  def show
    @achievement = Achievement.find(params[:id])
  end

  def index
    @achievements = Achievement.public_access
  end

  def edit
    @achievement = Achievement.find(params[:id])
  end

  def update
    redirect_to achievement_path(params[:id])
  end


  private

  def achievement_params
    params.require(:achievement).permit(:title, :description, :privacy, :cover_image, :featured )
  end
end