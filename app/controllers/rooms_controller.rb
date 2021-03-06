class RoomsController < ProtectedController
  before_action :set_room, only: [:show, :update, :destroy]

  # GET /rooms
  def index
    @rooms = current_user.rooms.all

    render json: @rooms
  end

  # GET /rooms/1
  def show
    render json: @room
  end

  # POST /rooms
  def create
    @room = current_user.rooms.build(room_params)

    if @room.save
      render json: @room, status: :created, location: @room
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rooms/1
  def update
    if @room.update(room_params)
      render json: @room
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rooms/1
  def destroy
    @room.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = current_user.rooms.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def room_params
      params.require(:room).permit(:name, :location, :size, :tasks_id, :notes,
                                   :completed, :priority)
    end
end
