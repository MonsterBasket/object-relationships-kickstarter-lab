class Backer
  attr_accessor :name, :backed_projects
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def back_project(project)
    ProjectBacker.new project, self
  end

  def backed_projects
    projects = []
    ProjectBacker.all.select {|p| projects << p.project if p.backer == self}
    projects
  end
end