class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

    post '/create_jobs' do 
      jobs = Job.create(name:params[:name],desciption:params[:desciption],phone:params[:phone],location:params[:location])
      jobs.to_json
    end  

    get '/jobs' do
      jobs = Job.all
      jobs.to_json
  end 

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
