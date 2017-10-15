require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/inventory_controller')
require_relative('controllers/add_album_controller')
require_relative('controllers/check_stock_controller')

get '/' do
  erb( :index )
end
