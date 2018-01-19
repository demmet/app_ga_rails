# This will guess the User class
FactoryGirl.define do
  factory :language, class: Language do
    name 'Teste'
  end

  # This will use the User class (Admin would have been guessed)
  factory :repository do
    language
    github_id 666
    name 'Repository Ruby 1'
    full_name 'Teste: Repository Ruby 1'
    html_url  'http://google.com'
    owner_url 'http://google.com'
    owner_login 'teste'
    description 'FactoryGirl Repository test'
  end

end
