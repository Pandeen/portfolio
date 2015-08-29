module Api
    module V1
        class LicensesController < ApplicationController
            before_action :authenticate_user!
            
            def index
                
                @license = License.where(strong_params).first
                
                unless @license.nil?
                  if @license.user_id == current_user.id
                    render json: @license, status: :ok
                  else
                      render nothing: true, status: :unauthorized
                  end
                  
                else
                    render nothing: true, status: :service_unavailable
                end
            end
            
            def strong_params
                params.require(:license).permit(:key)
            end
            
        end
    end
end