class AboutcarsController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # Setting the root as the parent directory of the current directory
  set :root, File.join(File.dirname(__FILE__), "..")

  # Sets the view directory correctly
  set :views, Proc.new {File.join(root, "views")}

  # INDEX
  get "/aboutcars" do
    @title = "Index Page"
    @aboutcars = Aboutcar.all
    puts @aboutcars.class

    erb :"aboutcars/index" # links to the index.erb page
  end

  # NEW
  get "/aboutcars/new" do
    erb :"aboutcars/new" # links to the new.erb page
  end

  # SHOW
  get "/aboutcars/:id" do
    id = params[:id].to_i
    @aboutcar = Aboutcar.find id

    erb :"aboutcars/show" # links to the show.erb page
  end

  # CREATE
  post "/aboutcars" do

    aboutcar = Aboutcar.new

    aboutcar.country = params[:country]
    aboutcar.city = params[:city]
    aboutcar.color = params[:color]

    aboutcar.save

    redirect "/aboutcars"
  end

  # UPDATE
  put "/aboutcars/:id" do
    id = params[:id].to_i

    aboutcar = Aboutcar.find id
    # changing the aboutcar info to user inputs
    aboutcar.country = params[:country]
    aboutcar.city = params[:city]
    aboutcar.color = params[:color]

    aboutcar.save
    # going back to the index page
    redirect "/aboutcars"
  end

  # DELETE
  delete "/aboutcars/:id" do
    id = params[:id].to_i
    # deleting the aboutcar
    Aboutcar.destroy id
    # going back to the index page
    redirect "/aboutcars"
  end

  # EDIT
  get "/aboutcars/:id/edit" do
    id = params[:id].to_i
    @aboutcar = Aboutcar.find id

    erb :"aboutcars/edit" # links to the edit.erb page
  end

end
