# frozen_string_literal: true

module Seam
  module Clients
    class Workspaces < BaseClient
      def get(workspace_id = nil)
        request_seam_object(
          :get,
          "/workspaces/get",
          Seam::Workspace,
          "workspace",
          params: {workspace_id: workspace_id}
        )
      end

      def list
        request_seam_object(
          :get,
          "/workspaces/list",
          Seam::Workspace,
          "workspaces",
          params: {}
        )
      end

      def reset_sandbox(workspace_id)
        request_seam(
          :post,
          "/workspaces/reset_sandbox",
          params: {workspace_id: workspace_id}
        )
      end
    end
  end
end
