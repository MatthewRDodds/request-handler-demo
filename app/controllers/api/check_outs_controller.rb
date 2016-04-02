class Api::CheckOutsController < ApiController
  def create
    handler = CheckOutHandler.new(params: check_out_params)

    if handler.create
      render json: handler.check_out, serializer: CheckOutSerializer,
        status: handler.status
    else
      render json: { error: handler.error }, status: handler.status
    end
  end

  private

  def check_out_params
    params.require(:check_out).permit(:book_id, :user_id)
  end
end
