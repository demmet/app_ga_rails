module GithubApiHelper

	def create_languages(languages)

		languages.each do |language|
			Language.create(name: language) unless Language.where(name: language).take
		end
		
	end

	def get_repositories_github(language)
		url = "https://api.github.com/search/repositories?q=language:#{language.name}&sort=stars&order=desc"
		uri = URI(url)

		request = Net::HTTP::Get.new(uri.path)
		request["Content-Type"] = "application/json"
		request["User-Agent"] = "Awesome-Octocat-App"

		response = Net::HTTP.get_response(uri)

		data = JSON.parse(response.body)

	end

	def load_all_repositories(languages)

		languages.each do |language|
			repositories = get_repositories_github(language)
			repositories['items'].each do |repository|
				formatted_repository = repository_format(repository)
				formatted_repository.language_id = language.id
				formatted_repository.save();
			end
		end

	end

	def repository_format(repository)

		formatted_repository = Repository.where(github_id: repository['id']).take
		if(formatted_repository.nil?)
			formatted_repository = Repository.new
		end
			
		formatted_repository.github_id = repository['id']
		formatted_repository.name =repository['name']
		formatted_repository.full_name = repository['full_name']
		formatted_repository.html_url = repository['html_url']
		formatted_repository.owner_login = repository['owner']['login']
		formatted_repository.owner_url = repository['owner']['html_url']
		formatted_repository.description = repository['description']
		formatted_repository.private = repository['private']

		formatted_repository.description = formatted_repository.description.gsub("\"", "\"\"").gsub("'", "''").
		force_encoding(Encoding::UTF_8) unless formatted_repository.description.nil?

		formatted_repository

	end

end
