var counters = document.querySelectorAll('.NCvalue');
var speed = 1000;

counters.forEach( counter => {
    var animate = () => {
       var value = +counter.getAttribute('akhi');
       var data = +counter.innerText;
      
       var time = value / speed;
      if(data < value) {
           counter.innerText = Math.ceil(data + time);
           setTimeout(animate, 1);
         }else{
           counter.innerText = value;
         }
      
    }
    
    animate();
 });

 function defile(){
   console.log("c'est bon")
 }