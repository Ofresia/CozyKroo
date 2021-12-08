
function getDate(date) {
  return date.toLocaleDateString().replace(/\./g, "").split(" ");
}

const pad = (str) => str > 10 ? str : '0' + str;

window.onload = function() {
  const ToDay = new Date();
  
  const nowMonth = ToDay.getMonth();
  
  const [y, m] = getDate(new Date(ToDay.setMonth(nowMonth)));

  const lastDay = getDate(new Date(y, m, 0)).pop() * 1;
  
  const day = new Date([y, m, 1].join("-")).getDay() * 1;
  
  const maxDay = Math.ceil((day + lastDay) / 7) * 7;

  let html = '';

  for (let i = 1; i <= maxDay; i++) {
    const diff = i - day;
    const d = diff <= lastDay && i > day ? diff : '';
    const tmpClass =  !d? 'background' : '';
 
    
    // 칸 
    	if(tmpClass != "background" ){
    		html += `<div class="dateSel ${tmpClass}" id="main" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" style='font-size : 13px; background : white; border: 2px solid rgb(98, 212, 229);'>${d}<img src='../../images/pic01.jpg'>
				    		<br>
				    			<p>
				    			텍스트
				    			</p>
				    	</div>`;
    	}else{
    		html += `<div class="dateSel ${tmpClass}" id="main" style="border: 2px solid rgb(98, 212, 229);"></div>`
    	}
    
  }

  document.querySelector('.dateSel').innerHTML = html;
  document.querySelector('.date_text').innerText = `${y}년 ${pad(m)}월`;
}

function zoomIn(event) {
	event.target.style.transform = "scale(2)";
	event.target.style.zIndex = 1;
	event.target.style.transition = "all 0.5s";
}

function zoomOut(event) {
	event.target.style.transform = "scale(1)";
	event.target.style.zIndex = 0;
	event.target.style.transition = "all 0.5s";
}