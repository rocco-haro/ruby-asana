require_relative 'resource'

module Asana
  module Resources
    # Public: An Asana workspace.
    class Workspace < Resource
      path '/workspaces'
      has_many :users
      has_many :tags
      has_many :teams, scope: -> id { "/organizations/#{id}" }
    end
  end
end
