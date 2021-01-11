json.array! @data_no_stations do |data|
  json.extract! data, :id, :date_time, :institution, :data_type, :lat, :lon, :swvht, :wspd, :wdir, :sst, :tp, :wvdir, :pres, :atmp, :dewpt, :swvht_swell, :wvdir_swell
end