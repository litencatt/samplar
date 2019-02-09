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
      if passing_args
        @result = client_class.new.send(params[:method].to_sym, *array_params)
      else
        @result = client_class.new.send(params[:method].to_sym)
      end

      render :result
    end

    private

    def client_class
      case
      when params[:client].include?('-')
        params[:client].split('-').map(&:classify).join('::').constantize
      else
        params[:client].classify.constantize
      end
    end

    def passing_args
      yaml[params[:client]][params[:method].to_s]
    end

    def array_params
      passing_args.map{|arg| create_params[arg.to_sym]}
    end

    def yaml
      YAML.load_file("#{Rails.root}/config/samplar.yml")
    end

    def create_params
      params.require(:args)
    end
  end
end
