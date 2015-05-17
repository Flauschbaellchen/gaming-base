module ApplicationHelper
  def current_revision
    file = Rails.root.join("REVISION")
    return nil unless File.exists?(file)
    rev = file.open.read
    "#{rev[0...8]}, #{File.ctime(file)}"
  end

  def navigation
    proc do |primary|
      
    end
  end

  def games_navigation
    proc do |primary|
      primary.dom_class = 'nav navbar-nav'
      primary.item :florensia, 'Florensia', florensia.root_path, hilight: /games\/florensia/
    end
  end

  def engine_javascripts
    return unless engine
    javascript_include_tag "#{engine}/application", "data-turbolinks-track" => true
  end

  def engine_stylesheets
    return unless engine
    stylesheet_link_tag "#{engine}/application", "data-turbolinks-track" => true, media: "all"
  end

  def engine
    namespaced = controller.class.name.split("::")
    return if namespaced.length < 2
    namespaced.first.downcase
  end

  def engine_of(model)
    engine = model.class.name.deconstantize.downcase
    engine = "main_app" if engine.blank?
    self.send(engine)
  end
end
