class Project < ActiveRecord::Base
  has_many :investments
  has_many :images

  def data
    data = {}
    data[:title] = self.title
    data[:description] = self.description
    data[:funded] = self.funded
    data[:total_cost] = self.total_cost
    data[:projected_completion] = self.projected_completion
    data[:images] = self.images
    data
  end

  def self.data
    all_data = []
    self.all.each do |project|
      all_data << project.data
    end
    all_data   
  end

end