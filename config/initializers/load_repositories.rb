
include GithubApiHelper

begin
	puts "Loading repositories... This will take a few seconds..."
	languages = [:ruby, :c, :java, :php, :assembly]
	create_languages(languages)
	load_all_repositories(Language.all())
	puts "Repositories loaded... You can access the application through http://localhost:3000/"
rescue StandardError => e
end