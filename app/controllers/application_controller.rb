class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid_msg

rescue_from ActiveRecord::RecordNotFound, with: :not_found_msg

private
def record_invalid_msg(invalid)
    
end

def not_found_msg(invalid)
    render json: {error:invalid.message}
end

end
