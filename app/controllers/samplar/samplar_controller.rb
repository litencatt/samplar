require_dependency "samplar/application_controller"

module Samplar
  class SamplarController < ApplicationController
    def index
      @clients = yaml
    end
  end
end
