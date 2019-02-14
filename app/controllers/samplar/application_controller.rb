module Samplar
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    private

    def yaml
      YAML.load_file("#{Rails.root}/config/samplar.yml")
    end

    def passing_args
      yaml[params[:client]][params[:method].to_s]
    end

    def client_class
      case
      when params[:client].include?('-')
        params[:client].split('-').map(&:classify).join('::').constantize
      else
        params[:client].classify.constantize
      end
    end

    def array_params
      passing_args.each do |arg|
        if create_params[arg].is_a?(Hash)
          create_params[arg].symbolize_keys
        else
          create_params[arg.to_sym]
        end
      end
    end
  end
end
