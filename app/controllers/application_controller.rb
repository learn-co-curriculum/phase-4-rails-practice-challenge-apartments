class ApplicationController < ActionController::API

rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

private

def record_invalid(x)
    render json: {errors: x.record.errors.full_messages}, status:422
end

def record_not_found(x)
    render json: {error: "Item Not Found" }, status:404
end

end
