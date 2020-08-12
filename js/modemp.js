Swal.fire({
	title:'Instrucciones:',
	
	icon: 'warning',
	//width:'90%',
	html:
    'Por favor lea cuidadosamente y conteste este cuestionario de la siguiente manera, según sea el caso:<br>' +
    '1.En el caso de preguntas cerradas, marque la que considere apropiada de esta manera:(X)<br>' +
    '2.En las preguntas de valoración se utiliza la escala de 1 al 5 en la que 1 es "muy malo" y 5 es "muy bueno"<br>' +
    '3.En los casos de preguntas abiertas dejamos un espacio para que usted escriba con mayuscula una respuesta no es suficiente,<br>por favor añada una hoja adicional al cuestionario<br>' +
    '4.Al final anexamos un inciso para comentarios y sugerencias,<br> le agradeceremos anote ahi los temas que,<br>a su juicio, omitimos en el cuestionario<br>',

	grow: 'colum',
	allowOutsideClick: false,
	allowEscapeKey: false,
	allowEnterKey: false,
	stopKeydownPropagation: false,
});