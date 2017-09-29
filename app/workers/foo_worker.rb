require "rbtrace"

class FooWorker
  include Sneakers::Worker

  from_queue 'foo_worker'

  def work(msg)
    begin
      User.count
      Rails.logger.tagged("Success #{Process.pid}") { Rails.logger.info('Maided it') }
    rescue => e
      Rails.logger.tagged("Fail! #{Process.pid}") { Rails.logger.error("Excpetion: #{e.inspect}") }
      return Process.kill('TERM', Process.pid)
    end
    ack!
  end
end
