const btnConverter = document.getElementById('btnConverter');
const medida = document.getElementById('medida');
const unidade = document.getElementById('unidade');
const resultado = document.getElementById('resultado');

btnConverter.addEventListener('click', function() {
    const medidaValue = parseFloat(medida.value);

    if (isNaN(medidaValue)) {
        alert('Digite um número válido!');
        return;
    }

    switch (unidade.value) {
        case 'metros':
            resultado.innerHTML = `${(medidaValue * 3.281).toFixed(2)} pés`;
            break;
        case 'centimetros':
            resultado.innerHTML = `${(medidaValue * 0.3937).toFixed(2)} polegadas`;
            break;
        case 'quilometros':
            resultado.innerHTML = `${(medidaValue * 0.6214).toFixed(2)} milhas`;
            break;
        case 'milimetros':
            resultado.innerHTML = `${(medidaValue * 0.03937).toFixed(2)} polegadas`;
            break;
    }
});