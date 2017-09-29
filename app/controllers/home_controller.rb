class HomeController < ApplicationController
  def index
    begin
      User.count
      Rails.logger.tagged("Success #{Process.pid}") { Rails.logger.info("Dad is #{Process.ppid}") }
      Rails.logger.tagged("Success #{Process.pid}") { Rails.logger.info('Maided it') }
    rescue => e
      Rails.logger.tagged("Fail! #{Process.pid}") { Rails.logger.error("Excpetion: #{e.inspect}") }
    end
  end
end
