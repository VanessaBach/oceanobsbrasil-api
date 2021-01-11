class Api::V1::DataStationsController < Api::V1::BaseController
  def index
    @query = ""
    if params[:token].present?
        user = User.where('authentication_token = ?', params[:token])
        unless user.empty?   
            if params[:date_time_min].present?
            	@query += "date_time >= '#{params[:date_time_min]}' AND "
            end
            if params[:date_time_max].present?
            	@query += "date_time <= '#{params[:date_time_max]}' AND "
            end
            @data_stations = DataStation.where(@query[0..-5])
        end
    end
  end
end
