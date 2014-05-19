require File.dirname(__FILE__) + "/../test_helper"

class DefacePathsTest < ActiveSupport::TestCase
  def test_app_overrides_paths
    overrides_paths = Rails.application.paths["app/overrides"]
    this_plugin_paths = Rails.root.join("plugins/redmine_base_deface/app/overrides")
    assert overrides_paths.include?(this_plugin_paths.to_s),
           "The init.rb of this very plugin should add every plugins' app/overrides to rails paths for app/overrides"
  end
end
