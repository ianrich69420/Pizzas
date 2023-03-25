class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        render json: Restaurant.all, except: [:created_at, :updated_at]
    end

    def show
        render json: find_restaurant, include: { pizzas: { except: [:created_at, :updated_at] } }, except: [:created_at, :updated_at]
    end

    def destroy
        find_restaurant.destroy
        render json: {}, status: :no_content
    end

    private

    def render_not_found_response
        render json: { error: "Restaurant not found" }, status: :not_found
    end
    
    def find_restaurant
        Restaurant.find(params[:id])
    end
end
