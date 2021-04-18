class Api::V1::UniversitiesController < Api::V1::BaseController
  def index
    @universities = policy_scope(University)
  end
end
