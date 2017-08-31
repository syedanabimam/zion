class ResistanceMembersController < ApplicationController
  before_action :set_resistance_member, only: [:show, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  # GET /resistance_members
  def index
    @resistance_members = ResistanceMember.all

    render json: @resistance_members
  end

  # GET /resistance_members/1
  def show
    render json: @resistance_member
  end

  # POST /resistance_members
  def create
    @resistance_member = ResistanceMember.new(resistance_member_params)

    if @resistance_member.save
      render json: @resistance_member, status: :created, location: @resistance_member
    else
      render json: @resistance_member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /resistance_members/1
  def update
    if @resistance_member.update(resistance_member_params)
      render json: @resistance_member
    else
      render json: @resistance_member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /resistance_members/1
  def destroy
    @resistance_member.destroy
    render json: { message: 'Resistance member is now extinct' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resistance_member
      @resistance_member = ResistanceMember.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resistance_member_params
      params.require(:resistance_member).permit(:name, :email, :code, :phone, :skills => [])
    end
end
