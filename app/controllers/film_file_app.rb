class FilmFile < Sinatra::Base

  get '/' do
    erb :dashboard
  end

  get '/films' do
    @films = Film.all
    erb :'films/index'
  end

  get '/films/new' do
    erb :'films/new'
  end

  post '/films' do
    Film.create(params[:film])
    redirect '/films'
  end

  get '/films/:id' do
    @film = Film.find(params[:id])
    erb :'films/show'
  end

  delete 'films/:id' do
    Film.delete(params[:id])
    redirect '/films'
  end

  get '/genres' do
   @genres = Genre.all
   erb :"genres/index"
 end

 get '/directors/:id' do
   @director = Director.find(params[:id])
   erb :'directors/show'
 end

 get '/directors' do
   @directors = Director.all
   erb :"directors/index"
 end

end
