document.getElementById("loginForm").addEventListener("submit", function (e) {
    e.preventDefault();

    const emailPhone = document.getElementById("emailPhone").value;
    const password = document.getElementById("password").value;

    if (emailPhone && password) {
        alert("Login successful!");
        window.location.href = "/Authorization/Test(6)"; 
    } else {
        alert("Please fill in all fields.");
    }
});