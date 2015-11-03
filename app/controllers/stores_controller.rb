class StoresController < ApplicationController

  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:id])

    divvyjson = JSON.parse(open("http://www.divvybikes.com/stations/json").read)
    stations = divvyjson['stationBeanList']

    location = Geocoder.search(@store.address)
    locLat = location[0].latitude
    locLon = location[0].longitude

    @locLat = location[0].latitude.to_s
    @locLon = location[0].longitude.to_s

    minimum = 3961

    @minStation = stations[0]

    stations.each do |station|
      curLat = station['latitude']
      curLon = station['longitude']

      diffLat = curLat - locLat
      diffLon = curLon - locLon

      a = ( Math.sin( diffLat / 2 ) )**2 + Math.cos( locLat ) * Math.cos( curLat ) * ( Math.sin( diffLon ) )**2
      c = 2 * Math.atan2( Math.sqrt( a ), Math.sqrt( 1 - a ) )
      d = 3961 * c

      if d < minimum
        minimum = d
        @minStation = station
      end

    end

  end

end