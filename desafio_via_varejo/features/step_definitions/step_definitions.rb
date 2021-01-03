Dado('que o cliente acesse o site das casas bahia') do
    visit "http://casasbahia.com.br"
end

Quando('inserir no campo de busca a palavra Iphone XR') do
    find("input[id=strBusca]").set "Iphone XR"
    find("button[value=Buscar]").click 
end

Quando('selecionar o modelo desejado') do
    find("a[href=https://www.casasbahia.com.br/TelefoneseCelulares/Smartphones/iPhone/iphone-xr-apple-64gb-product-red-tela-de-61-camera-de-12mp-ios-15253165.html?IdSku=15253165]").click 
end

Então('o cliente clica no botão comprar para adicionar ao carrinho') do
    find("button[title=Comprar]").click
    find("button[title=Continuar]").click
    expect(page).to have_text "Meu Carrinho"
end





