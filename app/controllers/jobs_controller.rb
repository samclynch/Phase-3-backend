class JobsController < ApplicationController 
    get '/jobs' do
        jobs = Job.all.to_json
    end
    post '/create_jobs' do 
      jobs = Job.create(name:params[:name],desciption:params[:desciption],phone:params[:phone],location:params[:location])
      jobs.to_json
    end  
    patch '/jobs/:id' do
        jobs = Job.find(params[:id]).update(name:params[:name],desciption:params[:desciption],phone:params[:phone],location:params[:location]) #job id??\
        jobs.to_json
    end
    delete '/jobs/:id' do
        job = Job.find(params[:id])
        job.destroy 
        {message: 'job deleted'}.to_json
    end
end

# front end : create react app, home page, services, set up fetch request, 