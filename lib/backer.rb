require 'pry' 

class Backer 

    attr_accessor :name 

    def initialize(name)
        @name = name
    end 

    def back_project(project)
        ProjectBacker.new(project,self)
    end 

    def backed_projects 
        ProjectBacker.all.select {|exchange| exchange.backer == self} 
    end







end