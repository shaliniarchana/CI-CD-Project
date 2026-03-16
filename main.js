let count = 0;
const display = document.getElementById('count');

document.getElementById('btn-inc').addEventListener('click', () => {
    count++;
    display.innerText = count;
});

document.getElementById('btn-dec').addEventListener('click', () => {
    count--;
    display.innerText = count;
});