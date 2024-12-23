const cart = (productId, amount) => {
    fetch(`/cart/${productId}/${amount}`)
    .then(resp => resp.json())
    .then(result => {
        console.log(result);        
    });
};

const buy = (productId, amount) => {

}

window.postLogin = type => {
    const amount = document.getElementById("amount").value;
    const productId = document.querySelector(`.action[data-type='${type}']`).dataset.id;

    alert(`로그인 완료: ${type}`);    

    fetch("/nav").then(resp => resp.text()).then(result => {
        document.getElementById("nav").innerHTML = result;
    });

    if(type === "cart") {
        cart(productId, amount);
    } else if(type === "buy") {
        buy(productId, amount);
    }
};

window.addEventListener("load", () => {
    document.querySelectorAll(".action").forEach(item => {
        item.addEventListener("click", e => {
            const { id, login, type } = e.target.dataset;
            const amount = document.getElementById("amount").value;

            alert(`${id}번 상품 / 수량: ${amount}개가 장바구니에 추가되었습니다.`);
            
            if(login === "true") {
                if(type === "cart") {
                    cart(id, amount);
                } else if(type === "buy") {
                    buy(id, amount);
                }
            } else {
                const width = 640;
                const height = 480;
                const left = window.screenX + ((window.screen.width - width) / 2);
                const top = window.screenY + ((window.screen.height - height) / 2);
            
                window.open(`/login/${type}/popup`, "login_popup", `left=${left},top=${top},width=${width},height=${height}`);
            }
        });    
    });
});