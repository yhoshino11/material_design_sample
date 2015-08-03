class HobbiesController < ApplicationController
  before_action :set_hobby, only: [:show, :edit, :update, :destroy]

  # GET /hobbies
  def index
    @hobbies = Hobby.all
  end

  # GET /hobbies/1
  def show
  end

  # GET /hobbies/new
  def new
    @hobby = Hobby.new
  end

  # GET /hobbies/1/edit
  def edit
  end

  # POST /hobbies
  def create
    @hobby = Hobby.new(hobby_params)

    if @hobby.save
      redirect_to @hobby, notice: 'Hobby was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /hobbies/1
  def update
    if @hobby.update(hobby_params)
      redirect_to @hobby, notice: 'Hobby was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /hobbies/1
  def destroy
    @hobby.destroy
    redirect_to hobbies_url, notice: 'Hobby was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hobby
      @hobby = Hobby.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hobby_params
      params.require(:hobby).permit(:url, :title, :description)
    end
end
