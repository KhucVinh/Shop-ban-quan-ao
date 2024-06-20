        // Lấy dữ liệu giỏ hàng từ Local Storage (nếu có)
let cartItems = [];
if (localStorage.getItem('cartItems')) {
  cartItems = JSON.parse(localStorage.getItem('cartItems'));
  renderCartItems();
  updateTotalPrice();
}

function renderCartItems() {
  const cart = document.getElementById('cart');
  cart.innerHTML = '';

  cartItems.forEach((product, index) => {
    const cartItem = createCartItemElement(product, index);
    cart.appendChild(cartItem);
  });
}

function createCartItemElement(product, index) {
  const cartItem = document.createElement('div');
  cartItem.classList.add('cart-item');
  cartItem.innerHTML = `
    <div class="cart-item" style="display: flex; align-items: center; margin-bottom: 10px;">
      <div class="cart-item-image" style="margin-right: 10px;">
        <img src="${product.image}" width="100px" height="100px" >
      </div>
      <div class="cart-item-details">
        <h4 style="color: #333;">${product.name}</h4>
        <p>Price: ${product.price}</p>
        <p>Color: ${product.color}</p>
        <p>Size: ${product.sizes.join(', ')}</p>
        <p>Quantity: ${product.quantity}</p>
        <button class="cart-item-remove" data-index="${index}" style="margin-left: auto;background-color: black;color: #ffffff;padding: 5px 10px;border: none;border-radius: 4px;cursor: pointer;">Remove</button>
      </div>
    </div>
  `;
  return cartItem;
}

function updateTotalPrice() {
  let totalPrice = 0;
  cartItems.forEach(product => {
    const price = parseFloat(product.price.slice(1));
    const quantity = parseInt(product.quantity);
    totalPrice += price * quantity;
  });
  document.getElementById('total').textContent = `$${totalPrice.toFixed(2)}`;
}

// Lắng nghe sự kiện click vào nút "Remove" trong giỏ hàng
const cart = document.getElementById('cart');
cart.addEventListener('click', function(event) {
  if (event.target.classList.contains('cart-item-remove')) {
    removeFromCart(event.target);
  }
});

function removeFromCart(removeButton) {
  const index = removeButton.dataset.index;
  cartItems.splice(index, 1);
  renderCartItems();
  updateTotalPrice();
  localStorage.setItem('cartItems', JSON.stringify(cartItems));
}

function checkout() {
    // Lấy giá trị tổng từ thẻ span có id là "total"
    var total = document.getElementById("total").innerText;
        
     // Chuyển đến trang thanh toán và truyền giá trị tổng qua URL
    window.location.href = "payment.html?total=" + total;
}
