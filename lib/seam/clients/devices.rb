# frozen_string_literal: true

module Seam
  module Clients
    class Devices < BaseClient
      def list(params = {})
        request_seam_object(
          :get,
          "/devices/list",
          Seam::Device,
          "devices",
          params: params
        )
      end

      def get(device_id = nil, name: nil)
        request_seam_object(
          :get,
          "/devices/get",
          Seam::Device,
          "device",
          params: {device_id: device_id, name: name}.compact
        )
      end

      def update(device_id: nil, is_managed: nil, name: nil, properties: nil)
        request_seam(
          :patch,
          "/devices/update",
          body: {
            device_id: device_id,
            is_managed: is_managed,
            name: name,
            properties: properties
          }.compact
        )
      end

      def list_device_providers(params = {})
        request_seam_object(
          :get,
          "/devices/list_device_providers",
          Seam::DeviceProvider,
          "device_providers",
          params: params
        )
      end
    end
  end
end
