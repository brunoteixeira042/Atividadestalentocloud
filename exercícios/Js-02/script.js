const h1 = document.querySelector('#titulo')
const ul = document.querySelector('ul')
const a = document.querySelector('a')
const ol = document.querySelector('#lista-ordenada')
const links = [
    { text: 'Google', url: 'https://www.google.com' },
    { text: 'YouTube', url: 'https://www.youtube.com' },
    { text: 'GitHub', url: 'https://github.com' }
];

h1.innerText = `Título`
a.innerText = `Link Proz`

for (let i = 1; i <= 3; i++) {
    const li = document.createElement('li')
    li.innerHTML = `item ${i}`
    ul.appendChild(li)
}

links.forEach(link => {
    const li = document.createElement('li');
    const a = document.createElement('a');
    a.textContent = link.text;
    a.href = link.url;
    a.target = "_blank";
    li.appendChild(a);
    ol.appendChild(li);
})