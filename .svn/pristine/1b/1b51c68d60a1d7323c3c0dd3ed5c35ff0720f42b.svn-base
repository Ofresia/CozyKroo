const loremIpsum = document.getElementById("lorem-ipsum")
fetch("https://baconipsum.com/api/?type=all-meat&paras=200&format=html")
    .then(response => response.text())
    .then(result => loremIpsum.innerHTML = result)
const modal = document.getElementById("modal")
function modalOn() {
    modal.style.display = "flex"
}
function isModalOn() {
    return modal.style.display === "flex"
}
function modalOff() {
    modal.style.display = "none"
}
const btnModal = document.getElementById("btn-modal")
btnModal.addEventListener("click", e => {
	modalOn()
})
const closeBtn = modal.querySelector(".close-area")
closeBtn.addEventListener("click", e => {
	modalOff()
})
modal.addEventListener("click", e => {
	const evTarget = e.target
	if(evTarget.classList.contains("modal-overlay")) {
		modalOff()
	}
})
window.addEventListener("keyup", e => {
	if(isModalOn() && e.key === "Escape") {
		modalOff()
	}
})
    const btnModal1 = document.getElementById("btn-modal1")
    btnModal1.addEventListener("click", e => {
    	modalOn()
    }) 
    const btnModal2 = document.getElementById("btn-modal2")
    btnModal2.addEventListener("click", e => {
    	modalOn()
    })
    const btnModal3 = document.getElementById("btn-modal3")
    btnModal3.addEventListener("click", e => {
    	modalOn()
    })
    const btnModal4 = document.getElementById("btn-modal4")
    btnModal4.addEventListener("click", e => {
    	modalOn()
    })
    const btnModal5 = document.getElementById("btn-modal5")
    btnModal5.addEventListener("click", e => {
    	modalOn()
    })
    const btnModal6 = document.getElementById("btn-modal6")
    btnModal6.addEventListener("click", e => {
    	modalOn()
    })
    const btnModal7 = document.getElementById("btn-modal7")
    btnModal7.addEventListener("click", e => {
    	modalOn()
    })
    const btnModal8 = document.getElementById("btn-modal8")
    btnModal8.addEventListener("click", e => {
    	modalOn()
    })
    const btnModal9 = document.getElementById("btn-modal9")
    btnModal9.addEventListener("click", e => {
    	modalOn()
    })
    const btnModal10 = document.getElementById("btn-modal10")
    btnModal10.addEventListener("click", e => {
    	modalOn()
    })