$('.stats').each(function () {
    var $this = $(this);
    var value = $this.text();
    $this.css("text-align", "center");



    if (value < 50) {
        $this.addClass('red');
    } else if (value < 80) {
        $this.addClass('gold');
    } else if (value < 90) {
        $this.addClass('green');
    } else if (value <= 105) {
        $this.addClass('lime-green');
    } else {
        $this.addClass('orange');
    }
    //$this.text($this.text() + '%'); To add % after the number

});