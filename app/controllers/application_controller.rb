class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_record

    private

    def render_invalid_record(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end
end
