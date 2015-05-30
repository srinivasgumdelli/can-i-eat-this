class RecommendationsController < ApplicationController
  def index
    @condition_ids = params[:conditions]
    @conditions = Condition.all
  end

  def retrieve
    # @recommendations = Condition.all
    # @params = recommendation_params
    # redirect_to recommendations_url
  end

  # def show
  # end
  #
  # def new
  #   @recommendation = Recommendation.new
  # end
  #
  # def edit
  # end
  #
  # def create
  #   @recommendation = Recommendation.new(recommendation_params)
  #
  #   if @recommendation.save
  #     redirect_to @recommendation, notice: 'Recommendation was successfully created.'
  #   else
  #     render :new
  #   end
  # end
  #
  # def update
  #   if @recommendation.update(recommendation_params)
  #     redirect_to @recommendation, notice: 'Recommendation was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   @recommendation.destroy
  #   redirect_to recommendations_url, notice: 'Recommendation was successfully destroyed.'
  # end

  private
    # Only allow a trusted parameter "white list" through.
    def recommendation_params
      params.require(:recommendation).permit(:conditions=>[])
    end
end
