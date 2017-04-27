$(document).ready(function () {
    alert('JavaScript Test!!!');
    $('#ImageButton1').on('click', function (e) {
        e.preventDefault();
        return false;
    });
    $('#ImageButton2').on('click', function (e) {
        e.preventDefault();
        return false;
    });
});