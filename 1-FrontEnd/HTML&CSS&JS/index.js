window.onload = ()=>{
    let body = document.getElementsByTagName("body")[0];
    let node = document.createElement("h2");
    node.innerText = "This is created by JS"
    body.appendChild(node);
}