var dropdown = document.querySelectorAll('.dropdown');

dropdown.forEach(dropdown => {
	const select = dropdown.querySelector('.select');
	const menu = dropdown.querySelector('.menu');
	const options = dropdown.querySelectorAll('.menu li');
	const selected = dropdown.querySelector('.selected')
	
	
	select.addEventListener( 'click', () => {
		select.classList.toggle('select-clicked');
		menu.classList.toggle('menu-open');
	});

	options.forEach(option => {
		option.addEventListener('click', () => {
			selected.innerText = option.innerText;
			select.classList.remove('select-clicred');
			menu.classList.remove('menu-open');

			options.forEach(option => {
				option.classList.remove('actived');
			});

			option.classList.add('active');
		});
	});
});

