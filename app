document.addEventListener('DOMContentLoaded', function() {
    document.querySelector('nav').addEventListener('click', function(e) {
        if (e.target.tagName === 'A') {
            e.preventDefault();
            loadContent(e.target.getAttribute('href'));
        }
    });
});

function loadContent(page) {
    let content = '';

    switch (page) {
        case '#home':
            content = document.getElementById('home-template').textContent;
            break;
        case '#features':
            content = document.getElementById('features-template').textContent;
            break;
        case '#pricing':
            content = document.getElementById('pricing-template').textContent;
            break;
    }

    document.getElementById('app-content').innerHTML = content;
}
