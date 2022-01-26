class ClientsController < ApplicationController
    get '/clients' do
        Client.all.to_json
    end
end