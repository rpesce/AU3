class WelcomeController < ApplicationController
before_action :authenticate_user!

  def index
  end

end

# This controller should have views for articles, lists and any other important feature
# in the website. The idea here is to provide a global view of the whole website
# and access - link - to the specific feature.