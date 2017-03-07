class MonitoringController < ApplicationController
  def index
    Rails.logger.info "I'm here !!"
  end
end
