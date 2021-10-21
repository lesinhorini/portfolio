3.times do |i|
    Topic.create!(
        title: "Topic #{i}"
    )
end

puts "Creating 10 blogs..."

10.times do |i|
    Blog.create!(
        title: "My Blog Post #{i}",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed nisl ac lectus ultricies malesuada et et felis. Cras ornare eleifend condimentum. Vestibulum orci urna, placerat sed mattis non, fermentum ac urna. Curabitur tempus bibendum purus, in imperdiet nulla mollis ut. Quisque pulvinar pulvinar dictum. In hac habitasse platea dictumst. Donec eget faucibus massa. Maecenas dictum sem turpis, sit amet accumsan risus semper non. Cras commodo mollis eros, ac consequat arcu vehicula quis. Cras et vehicula turpis. Cras ornare nibh enim, nec eleifend ipsum egestas at.",
        topic_id: Topic.last.id
    )
end

puts "Creating 5 skills..."

Skill.create!(title: "Ruby", percent_used: 50)
Skill.create!(title: "NodeJS", percent_used: 25)
Skill.create!(title: "Kotlin", percent_used: 10)
Skill.create!(title: "Golang", percent_used: 10)
Skill.create!(title: "HTML", percent_used: 5)

puts "Creating 9 jobs..."

8.times do |i|
    Job.create!(
        title: "Job title #{i}",
        subtitle: "Ruby on Rails",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed nisl ac lectus ultricies malesuada et et felis. Cras ornare eleifend condimentum. Vestibulum orci urna, placerat sed mattis non, fermentum ac urna. Curabitur tempus bibendum purus, in imperdiet nulla mollis ut. Quisque pulvinar pulvinar dictum. In hac habitasse platea dictumst. Donec eget faucibus massa. Maecenas dictum sem turpis, sit amet accumsan risus semper non. Cras commodo mollis eros, ac consequat arcu vehicula quis. Cras et vehicula turpis. Cras ornare nibh enim, nec eleifend ipsum egestas at.",
        main_image: "https://via.placeholder.com/600x400",
        thumb_image: "https://via.placeholder.com/350x200"
    )
end

Job.create!(
    title: "Job title 8",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed nisl ac lectus ultricies malesuada et et felis. Cras ornare eleifend condimentum. Vestibulum orci urna, placerat sed mattis non, fermentum ac urna. Curabitur tempus bibendum purus, in imperdiet nulla mollis ut. Quisque pulvinar pulvinar dictum. In hac habitasse platea dictumst. Donec eget faucibus massa. Maecenas dictum sem turpis, sit amet accumsan risus semper non. Cras commodo mollis eros, ac consequat arcu vehicula quis. Cras et vehicula turpis. Cras ornare nibh enim, nec eleifend ipsum egestas at.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
)

puts "Seeds created"
