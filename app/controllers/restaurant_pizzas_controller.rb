class RestaurantPizzasController < ApplicationController

    def create
        pizza = Pizza.find(params[:pizza_id])
        restaurant = Restaurant.find(params[:restaurant_id])
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant_pizza.pizza, except: [:created_at, :updated_at], status: :created
    rescue ActiveRecord::RecordNotFound
        render json: { error: "Pizza or Restaurant not found" }, status: :not_found
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    private

    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end
end
