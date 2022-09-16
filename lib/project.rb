class Project
  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << title
  end

  def self.all
    @@all
  end

  def add_backer(backer)
    ProjectBacker.new self, backer
  end

  def backers
    backers = []
    ProjectBacker.all.select {|p| backers << p.backer if p.project == self}
    backers
  end
end