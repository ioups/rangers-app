class HeroesController < ApplicationController
  before_action :set_hero, only: [:show, :edit, :update, :destroy]

  def index
    @heroes = Hero.all
    @templates = Hero.template
  end

  def show
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(hero_params)

    if @hero.save
      redirect_to heroes_path, notice: "Hero was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @hero.update(hero_params)
      redirect_to heroes_path, notice: "Hero was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @hero.destroy
    redirect_to heroes_path, notice: "Hero was successfully destroyed."
  end

  private

  def set_hero
    @hero = Hero.find(params[:id])
  end

  def hero_params
    params.require(:hero).permit(:name)
  end
end
