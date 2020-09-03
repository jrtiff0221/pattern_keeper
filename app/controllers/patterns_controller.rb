class PatternsController < ApplicationController
    before_action :set_pattern, only [:show, :edit, :update, :destory]

  def new
    @pattern = Pattern.new
  end

  def create
    @pattern = Pattern.new(pattern_params)
    if @pattern.valid?
      @pattern.save
      
      redirect_to pattern_path(@pattern)
    else
      render :new 
    end
  end

  def index
    if params[:category]
      
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private

end
