json.array! @data_stations do |data|
  json.extract! data, :id, :station_id, :date_time, :wspd, :wdir, :gust, :atmp, :pres, :rh, :dewpt, :swvht, :swvht_swell, :swvht_sea, :wvdir, :wvdir_swell, :wvdir_sea, :mxwvht, :tp, :wvspread, :water_level, :sst, :meteorological_tide
end