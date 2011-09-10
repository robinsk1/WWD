class Admin::ApplicationController < ApplicationController
  before_filter :authenticate_admin!
  before_filter :set_locale
  helper 'admin/application'
  layout 'admin/layouts/admin'

  def set_locale
    I18n.locale = 'en'
  end


end