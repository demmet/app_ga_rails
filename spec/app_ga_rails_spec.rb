require File.expand_path '../rails_helper.rb', __FILE__

feature "App Github Atlw => '/'" do

	scenario "acessar página de repositórios Ruby e clicar em Detalhes deve
		retornar a página de detalhes de um repositório" do
		
		visit root_path
		
		click_button 'Ruby Repositories'
		click_button 'Detalhes', match: :first
		expect(page).to have_content "Detalhes do Repositório"
	end
end

feature "App Github Atlw => /repositories/:id"

	scenario "clicar no botão '{language} Repositories' deve retornar a página
		que lista os repositórios da linguagem" do

			visit repository_path(1)
			click_button 'repositories'
			expect(page).to have_content "Lista de repositórios"
			
		end
	end
