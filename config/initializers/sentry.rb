if Rails.env.production?
  Sentry.init do |config|
    config.dsn = 'https://80c7d616d38e4ca8b008f8805d941c52@o1080616.ingest.sentry.io/6086671'

    # Set traces_sample_rate to 1.0 to capture 100%
    # of transactions for performance monitoring.
    # We recommend adjusting this value in production.
    config.traces_sample_rate = 1.0
    # or
    config.traces_sampler = lambda do |context|
      true
    end
  end
end
