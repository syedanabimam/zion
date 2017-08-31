class ResistanceShipsController < ApplicationController
  before_action :set_resistance_ship, only: [:show, :update, :destroy]

  # GET /resistance_ships
  def index
    @resistance_ships = ResistanceShip.all

    render json: @resistance_ships
  end

  # GET /resistance_ships/1
  def show
    render json: @resistance_ship
  end

  # POST /resistance_ships
  def create
    @resistance_ship = ResistanceShip.new(resistance_ship_params)

    if @resistance_ship.save
      render json: @resistance_ship, status: :created, location: @resistance_ship
    else
      render json: @resistance_ship.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /resistance_ships/1
  def update
    if @resistance_ship.update(resistance_ship_params)
      render json: @resistance_ship
    else
      render json: @resistance_ship.errors, status: :unprocessable_entity
    end
  end

  # DELETE /resistance_ships/1
  def destroy
    @resistance_ship.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resistance_ship
      @resistance_ship = ResistanceShip.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resistance_ship_params
      params.require(:resistance_ship).permit(:name, :code, :capacity)
    end
end
