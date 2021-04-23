class Api::V1::UniversitiesController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [:index, :show]
  before_action :set_university, only: [:show, :update, :destroy]

  def index
    @universities = policy_scope(University)
  end

  def show
  end

  def update
    if @university.update(university_params)
      render :show
    else
      render_error
    end
  end

  def create
    @university = University.new(university_params)
    @university.user = current_user
    authorize @university
    if @university.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @university.destroy
    head :no_content
  end

  private

  def set_university
    @university = University.find(params[:id])
    authorize @university
  end

  def university_params
    params.require(:university).permit(:name, :url, :country, :address, :latitude, :longitude)
  end

  def render_error
    render json: { errors: @university.errors.full_messages },
      status: :unprocessable_entity
  end
end
