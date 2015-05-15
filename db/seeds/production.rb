class Seed

  def self.start
    new.generate
  end

  def generate
    create_users
    create_items
    create_statuses
    create_projects
    create_images
  end

  def create_users
    users.each { |user_data| User.create!(user_data) }
    puts 'users created'
  end

  def users
    [ {email: 'default@user.com', password: 'password', role: 0},
      {email: 'admin@user.com', password: 'password', role: 1}
    ]
  end

  def create_items
    items.each { |item_data| Item.create!(item_data) }
    puts 'items created'
  end

  def items
    [ {title: 'sample item', description: 'lots of goodies', price: 150},
      {title: 'another item', description: 'seed does not use default image', price: 275, image: File.open('app/assets/images/goodies.jpg')}
    ]
  end

  def create_statuses
    statuses.each { |status| Status.create!(status) }
    puts 'statuses created'
  end

  def statuses
    [ {name: 'ordered'}, {name: 'paid'}, {name: 'cancelled'}, {name: 'complete'} ]
  end

  def create_projects
    projects.each { |project| Project.create!(project) }
    puts 'projects created'
  end

  def projects
    [ {title: 'Austin Area Remodel', description: 'A aliquam ornare. Sed nunc euismod dolor amet, ante integer montes sed sit, a conubia morbi a. Nulla non ipsum malesuada, nibh molestie, et sed aspernatur mauris pellentesque, et diam sodales architecto eu, porta praesent vel ligula pellentesque diam.',
       total_cost: 7000000, projected_completion: '2016-01-01'}#,
      # {title: 'Denver Complete Teardown', description: 'Nullam ultrices ratione pede maecenas, dui vel morbi eu adipiscing convallis, sollicitudin urna mollis, tincidunt at sit, malesuada varius cursus a eget lectus. Porttitor tempus metus cubilia.',
       # total_cost: 100000, projected_completion: '2016-03-01'} 
    ]
  end

  def create_images
    images.each { |image| Image.create!(image) }
    puts 'images created'
  end

  def images
    [ {project_id: 1, image: File.open('app/assets/images/house_1_1.jpg') },
      # {project_id: 1, image: File.open('app/assets/images/house_1_2.jpg') },
      {project_id: 1, image: File.open('app/assets/images/house_1_3.jpg') },
      {project_id: 1, image: File.open('app/assets/images/house_2_1.jpg') },
      {project_id: 1, image: File.open('app/assets/images/house_2_2.jpg') },
      {project_id: 1, image: File.open('app/assets/images/house_2_3.jpg') }
    ]
  end

end

Seed.start

