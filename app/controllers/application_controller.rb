class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


    # get '/games' do
    #   games = Game.all.order(:title).limit(10)
    #   games.to_json
    # end

    get '/jobs/:id' do
      jobs = Job.find(params[:id])
      jobs.to_json
    end

    delete '/jobs/:id' do
      jobs = Job.find(params[:id])
      jobs.destroy
      jobs.to_json 
    end
end
