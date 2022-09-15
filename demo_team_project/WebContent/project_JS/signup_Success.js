window.onload= function(){
    $("#startButton").trigger("click");
    setTimeout(function(){
        $("#stopButton").trigger("click");
    },10000);
}