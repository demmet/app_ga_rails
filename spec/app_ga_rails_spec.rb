require File.expand_path '../rails_helper.rb', __FILE__

feature "App Github Atlw => /welcome/index" do

	scenario "acessar página de repositórios Ruby e clicar em Detalhes deve retornar a página de detalhes de um repositório" do
		
		visit root_path
		
		click_button 'Ruby Repositories'
		click_button('Detalhes', match: :first)
		expect(page).to have_content "Detalhes do Repositório"
	
	end

end
