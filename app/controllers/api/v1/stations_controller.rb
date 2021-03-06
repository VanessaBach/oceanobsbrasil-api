class Api::V1::StationsController < Api::V1::BaseController
  def index
    @query = ""
    if params[:token].present?
    	user = User.where('authentication_token = ?', params[:token])
    	unless user.empty?    
		    if params[:data_type].present?
		    	@query += "data_type = '#{params[:data_type]}' AND "
		    end
		    if params[:latmin].present?
		    	@query += "lat >= '#{params[:latmin]}' AND "
		    end
		    if params[:latmax].present?
		    	@query += "lat <= '#{params[:latmax]}' AND "
		    end
		    if params[:lonmin].present?
		    	@query += "lon >= '#{params[:lonmin]}' AND "
		    end
		    if params[:lonmax].present?
		    	@query += "lon <= '#{params[:lonmax]}' AND "
		    end
		    @stations = Station.where(@query[0..-5])
		end
    end
  end
end
