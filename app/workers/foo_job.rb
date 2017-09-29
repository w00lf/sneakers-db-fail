class FooJob
  @queue = :foo_job

  class << self
    def perform(msg)
      Rails.logger.tagged('Foo::Job') do
        Rails.logger.info('===start===')
        User.count
        Rails.logger.info('===stop===')
      end
    end
  end
end
