require_dependency "samplar/application_controller"

module Samplar
  class SamplarController < ApplicationController
    def index
      @clients = yaml
    end

    def show
      @pass_args   = passing_args
      @client_name = params[:client]
      @method_name = params[:method]
    end

    def create
      @result = client.send(params[:method].to_sym, *passing_args)

      render :result
    end

    private

    def client
      case
      when params[:client].include?('-')
        params[:client].split('-').map(&:classify).join('::').constantize
      else
        params[:client].classify.constantize
      end
    end

    def yaml
      YAML.load_file('./config/samplar.yml')
    end

    def passing_args
      yaml[params[:client]][params[:method].to_s]
    end

    def new_args
      yaml[params[:client]][:new]["args"]
    end

    def create_params
      params.require(:args)
    end
  end
end
