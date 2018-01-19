require File.expand_path '../rails_helper.rb', __FILE__

RSpec.feature "App Github Atlw => '/'" do

  scenario "clicar no botão '{language} Repositories' deve retornar a página
    que lista os repositórios da linguagem" do

    visit root_path
    click_link 'Ruby Repositories'
    expect(page).to have_content "Lista de repositórios"
  end
end

RSpec.feature "App Github Atlw => '/'" do

	scenario "acessar página de repositórios Ruby e clicar em Detalhes deve
		retornar a página de detalhes de um repositório" do

		visit root_path
		click_link 'Ruby Repositories'
		click_link 'Detalhes', match: :first
		expect(page).to have_content "Detalhes do Repositório"
	end
end

RSpec.feature "App Github Atlw => /repositories/:id" do

	scenario "clicar no botão '{language} Repositories' deve retornar a página
		que lista os repositórios da linguagem" do

		visit root_path
		click_link 'Ruby Repositories'
		click_link 'Detalhes', match: :first
		click_link 'repositories'
		expect(page).to have_content "Lista de repositórios"

	end
end
