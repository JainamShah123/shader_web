// web/lavalamp.js
const canvas = document.getElementById("lavalamp-canvas");
const ctx = canvas.getContext("2d");

function resize() {
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
}
resize();
window.addEventListener("resize", resize);

let t = 0;
function draw() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);

    // simple "lava lamp" blobs
    for (let i = 0; i < 5; i++) {
        const x = canvas.width / 2 + Math.sin(t / 50 + i) * 200;
        const y = canvas.height / 2 + Math.cos(t / 60 + i) * 200;
        const r = 120 + 50 * Math.sin(t / 40 + i);

        const grad = ctx.createRadialGradient(x, y, r * 0.2, x, y, r);
        grad.addColorStop(0, "rgba(255,0,150,0.6)");
        grad.addColorStop(1, "rgba(0,0,0,0)");

        ctx.fillStyle = grad;
        ctx.beginPath();
        ctx.arc(x, y, r, 0, Math.PI * 2);
        ctx.fill();
    }

    t++;
    requestAnimationFrame(draw);
}
draw();
