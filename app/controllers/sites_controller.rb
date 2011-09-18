class SitesController < ApplicationController

  set_tab :about, :only => %w(about)
  set_tab :events, :only => %w(events)
  set_tab :photos, :only => %w(photos)

  def index
  end

  def about
  end

  def photos
  end

  def events
  end

end
