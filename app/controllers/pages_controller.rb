class PagesController < ApplicationController
  def home
    @experiences = Experience.first(3)
  end

  def experience
  end

  def education
  end

  def projects
  end

  def skills
  end

  def approach
  end

  def contact
  end
end
