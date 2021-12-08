function show1(){
	$("#write").show();
	var c = document.getElementById("wirte");
}
function hide(){
	$("#write").hide();
};

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
  
  var toDate = ToDay.getDate(); // 현재 날짜
  
  let html = '';

  for (let i = 1; i <= maxDay; i++) {
    const diff = i - day;
    const d = diff <= lastDay && i > day ? diff : '';
    const tmpClass =  !d? 'background' : '';
    
    
    // 칸 
    	if(tmpClass != "background" ){
    		if(`${d}` == toDate){
    			html += `<div class="dateSel ${tmpClass}" id="main"><label>${d}</label><a href="#write" class="button primary" style="text-decoration:none;margin-left: 17%;margin-top: 35%; font-family: 'Gaegu', cursive;" id="show" onclick="show1()">글쓰기</a></div>`;
    		}else{
    			html += `<div class="dateSel ${tmpClass}" id="main"><label>${d}</label></div>`;
    		}
    	}else{
    		html += `<div class="dateSel ${tmpClass}" id="main"></div>`
    	}
  }
  
  
  
  document.querySelector('.dateSel').innerHTML = html;
  document.querySelector('.date_text').innerText = `${y}년 ${pad(m)}월`;
}