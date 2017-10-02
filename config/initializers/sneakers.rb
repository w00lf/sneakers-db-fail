require 'sneakers'
require 'sneakers/handlers/maxretry'

Sneakers.configure(heartbeat: 2000,
                   amqp: "amqp://guest"\
                   ":guest"\
                   "@localhost:5673",
                   vhost: '/',
                   exchange: 'default',
                   exchange_type: 'topic',
                   log: 'log/sneakers.log',
                   timeout_job_after: 60,
                   workers: 2,
                   threads: 2,
                   durable: true)

Sneakers.logger.level = Logger::DEBUG


# ,
# hooks: {
#    before_fork: -> {
#      Rails.logger.info('Worker: Disconnect from the database')
#      ActiveRecord::Base.connection_pool.disconnect!
#    },
#    after_fork: -> {
#      config = Rails.application.config.database_configuration[Rails.env]
#      config['reaping_frequency'] = ENV['DB_REAP_FREQ'] || 10 # seconds
#      config['pool'] = ENV['DB_POOL'] || 5
#      ActiveRecord::Base.establish_connection(config)
#      Rails.logger.info('Worker: Reconnect to the database')
#    }
#  }