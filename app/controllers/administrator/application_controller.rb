module Administrator
  class ApplicationController < ::ApplicationController
    before_action :authenticate_admin!

    layout 'administrator'
  end
end
