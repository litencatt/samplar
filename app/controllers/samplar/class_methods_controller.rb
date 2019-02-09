require_dependency "samplar/application_controller"

module Samplar
  class ClassMethodsController < ApplicationController
    def show
      @pass_args   = passing_args
      @client_name = params[:client]
      @method_name = params[:method]
    end

    def create
      if passing_args
        @result = client_class.send(params[:method].to_sym, *array_params)
      else
        @result = client_class.send(params[:method].to_sym)
      end

      render :result
    end

    private

    def passing_args
      yaml[params[:client]]['self'][params[:method].to_s]
    end

    def create_params
      params.require(:args)
    end
  end
end
