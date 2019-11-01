# frozen_string_literal: true

require 'three_scale_api/tools'
require 'three_scale_api/resources/default'
require 'three_scale_api/clients/metricbackendapi'

module ThreeScaleApi
  module Resources
    # Service resource wrapper for the service entity received by REST API
    class BackendApi < DefaultResource
      # @api public
      # Gets the metrics manager that has bind this backend api resource
      #
      # @return [MetricsManager] Instance of the metrics manager
      def metrics
        Clients::MetricBackendApiClient.new(self)
      end
    end
  end
end
