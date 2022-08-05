<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="kr">
	<head>
	<meta charset="UTF-8">
	<title>http://www.blueb.co.kr</title>
<link rel="stylesheet" href="assets/css/clock.css" />

<style rel="stylesheet">

</style>
</head>
<body>

<section class="border-clock"></section>
<section class="clock">
  <ul>
    <li><i>12</i></li>
    <li><i>1</i></li>
    <li><i>2</i></li>
    <li><i>3</i></li>
    <li><i>4</i></li>
    <li><i>5</i></li>
    <li><i>6</i></li>    
    <li><i>7</i></li>    
    <li><i>8</i></li>    
    <li><i>9</i></li>    
    <li><i>10</i></li>    
    <li><i>11</i></li>
  </ul>
  
  <h2 id="clocktitle">Traveler</h2>
  <h3></h3>
  
  <output class="date"></output>
  
  <div class="minutes"></div>
  <div class="hours"></div> 
  <div class="seconds"></div>
  <div class="cercle"></div>
  
</section>

<script type="text/javascript">
(function createSecondLines(){
  var clock = document.querySelector(".clock");
  var rotate = 0;
  
  var byFive = function(n) {
    return (n / 5 === parseInt(n / 5, 10)) ? true : false;
  };
  
  for (i=0; i < 30; i++) {
    var span = document.createElement("span");
   
    if (byFive(i)) {
      span.className = "fives";
    }
    
    span.style.transform = "translate(-50%,-50%) rotate("+ rotate + "deg)";
    clock.appendChild(span);
    rotate += 6;
  }
})();

(function setClock() {
  var time = new Date();
  
  var hours = time.getHours();
  var minutes = time.getMinutes();
  var seconds = time.getSeconds();
  
  var clock = {
    hours: document.querySelector('.hours'),
    minutes: document.querySelector('.minutes'),
    seconds: document.querySelector('.seconds')
  };
  
  var deg = {
    hours: 30 * hours + .5 * minutes,
    minutes: 6 * minutes + .1 * seconds,
    seconds: 6 * seconds
  }
  
  clock.hours.style.transform = 'rotate(' + deg.hours + 'deg)';
  clock.minutes.style.transform = 'rotate(' + deg.minutes + 'deg)';
  clock.seconds.style.transform = 'rotate(' + deg.seconds + 'deg)';
  
  var runClock = function(){
    deg.hours += 360/43200;
    deg.minutes += 360/3600;
    deg.seconds += 360/60;
    
    clock.hours.style.transform = 'rotate(' + deg.hours + 'deg)';
    clock.minutes.style.transform = 'rotate(' + deg.minutes + 'deg)';
    clock.seconds.style.transform = 'rotate(' + deg.seconds + 'deg)';
  };
  
  setInterval(runClock,1000);
  
  (function printDate(){
    var months = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'];
    var print = months[time.getMonth()] + ' / ' + time.getDate();
    var output = document.querySelectorAll('output');
    
    [].forEach.call(output, function(node){
      node.innerHTML = print;
    });
  })();
  
})();
</script>
</body>
</html>
