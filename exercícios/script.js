// Método Simples - Adicionando o título ao site
document.body.innerHTML += '<h1 id="titulo">Loja de Produtos</h1>';

// Método Complexo - Criando o elemento do produto à venda
const productContainer = document.createElement('div');
productContainer.id = 'produto';

// Nome do produto
const productName = document.createElement('h2');
productName.textContent = 'Notebook Gamer';

// Descrição do produto
const productDescription = document.createElement('p');
productDescription.textContent = 'Notebook com processador Intel Core i7, 16GB RAM, SSD 512GB e placa de vídeo GTX 1650.';

// Preço do produto
const productPrice = document.createElement('p');
productPrice.textContent = 'Preço: R$ 5.000,00';

// Imagem do produto
const productImage = document.createElement('img');
productImage.src = 'https://a-static.mlcdn.com.br/800x560/notebook-samsung-book-intel-core-i7-8gb-256gb-ssd-156-full-hd-windows-11-np550xda-ku1br/magazineluiza/233308000/62df3153be6085eee09a19bed401f443.jpg'; // Imagem de exemplo
productImage.alt = 'Imagem do Notebook';

// Adicionando os elementos ao container do produto
productContainer.appendChild(productImage);
productContainer.appendChild(productName);
productContainer.appendChild(productDescription);
productContainer.appendChild(productPrice);

// Adicionando o container do produto ao body do documento
document.body.appendChild(productContainer);
