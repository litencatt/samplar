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
      passing_args.map do |arg|
        if arg == 'options'
          if key_value = create_params[arg.to_sym].split(':')
            { key_value[0].to_sym => key_value[1] }
          else
            {}
          end
        else
          create_params[arg.to_sym]
        end
      end
    end
  end
end
