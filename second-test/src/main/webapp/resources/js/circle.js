 function draw(){
 
            var ctx = document.getElementById('myCanvas').getContext("2d");
 
            //원 그리기
          
           
            //원호 그리기
            ctx.beginPath();
            ctx.arc(140, 140, 92, (Math.PI/180)*145 ,(Math.PI/180) *35,false);            
            ctx.lineWidth = 12;
            ctx.lineCap = 'round';
            ctx.strokeStyle = "gray"
            
            ctx.stroke(); //테두리
            
            
        }
