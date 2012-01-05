require './lib/base'

class Home < Base
  get '/' do
    haml :index
  end
  
  get '/nysida' do
	@test=Test.all
    haml :nysida
  end
  post '/nysida' do
	
  end
  get '/:id' do
	@test=Test.get params[:id]
	haml :edit
   end
   
   post '/:id' do
	@test=Test.get params[:id]
	p params
	@test.update params
	redirect '/nysida'
	end
  get '/nysida/:update' do
	@test = Test.get(1)
	@test2 = Test.update(:namn => 'Staffan')
	@test2 = Test.get(:namn)
    haml :nysida
	
  end
end



