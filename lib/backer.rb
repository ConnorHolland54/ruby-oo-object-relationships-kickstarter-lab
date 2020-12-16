class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        arr = ProjectBacker.all.select { |proj| proj.backer == self}
        arr.map { |x| x.project}
    end


end