/*
  // Lấy thông tin từ div product-content-right khi nhấn nút "ADD TO CART"
  const addToCartButton = document.querySelector('.product-content-right-button-first');
  addToCartButton.addEventListener('click', () => {
    // Lấy thông tin từ các phần tử trong div product-content-right
    const name = document.querySelector('.product-content-right-name h3').textContent;
    const price = document.querySelector('.product-content-right-price strong').textContent;
    const color = document.querySelector('.product-content-right-color span').textContent;
    const sizeElements = document.querySelectorAll('.product-content-right-size span');
    const sizes = Array.from(sizeElements).map(span => span.textContent);
    const quantity = document.getElementById('product-quantity').value;

    // Tạo đối tượng chứa thông tin sản phẩm
    const product = {
      name: name,
      price: price,
      color: color,
      sizes: sizes,
      quantity: quantity
    };

    // Lấy dữ liệu giỏ hàng từ localStorage (nếu có)
    let cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];

    // Thêm sản phẩm vào giỏ hàng
    cartItems.push(product);

    // Lưu dữ liệu giỏ hàng vào localStorage
    localStorage.setItem('cartItems', JSON.stringify(cartItems));

    // Cập nhật tổng tiền trong giỏ hàng
    updateTotal();

    // Hiển thị giỏ hàng
    displayCart();
  });

  // Xóa sản phẩm khỏi giỏ hàng
  function removeFromCart(index) {
    // Lấy dữ liệu giỏ hàng từ localStorage
    let cartItems = JSON.parse(localStorage.getItem('cartItems'));

    // Xóa sản phẩm khỏi giỏ hàng dựa trên chỉ mục (index)
    cartItems.splice(index, 1);

    // Lưu dữ liệu giỏ hàng mới vào localStorage
    localStorage.setItem('cartItems', JSON.stringify(cartItems));

    // Cập nhật tổng tiền trong giỏ hàng
    updateTotal();

    // Hiển thị giỏ hàng
    displayCart();
  }

  // Hàm cập nhật tổng tiền trong giỏ hàng
  function updateTotal() {
    const totalElement = document.getElementById('total');
    const cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
    let totalPrice = 0;

    cartItems.forEach(item => {
      const price = parseFloat(item.price.replace('$', ''));
      const quantity = parseInt(item.quantity);
      totalPrice += price * quantity;
    });

    totalElement.textContent = '$' + totalPrice.toFixed(2);
  }

  // Hiển thị giỏ hàng
  function displayCart() {
    const cart = document.getElementById('cart');
    const cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];

    // Xóa tất cả các phần tử trong giỏ hàng để hiển thị lại
    while (cart.firstChild) {
      cart.removeChild(cart.firstChild);
    }

    // Hiển thị từng sản phẩm trong giỏ hàng
    cartItems.forEach((item, index) => {
      const productInfo = document.createElement('div');
      productInfo.innerHTML = `
        <p>Name: ${item.name}</p>
        <p>Price: ${item.price}</p>
        <p>Color: ${item.color}</p>
        <p>Size: ${item.sizes.join(', ')}</p>
        <p>Quantity: ${item.quantity}</p>
        <button onclick="removeFromCart(${index})">Remove</button>`;

      cart.appendChild(productInfo);
    });
  }

  // Kiểm tra xem có dữ liệu giỏ hàng trong localStorage hay không
  if (localStorage.getItem('cartItems')) {
    // Nếu có, hiển thị lại giỏ hàng và tổng tiền
    displayCart();
    updateTotal();
  }
 */

// Lắng nghe sự kiện click vào nút "Add to Cart"
const addToCartButton = document.querySelector('.product-content-right-button-first');
addToCartButton.addEventListener('click', addToCart);

// Lắng nghe sự kiện click vào nút "Remove" trong giỏ hàng
const cart = document.getElementById('cart');
cart.addEventListener('click', function(event) {
  if (event.target.classList.contains('cart-item-remove')) {
    removeFromCart(event.target);
  }
});

// Khởi tạo giỏ hàng từ Local Storage (nếu có)
let cartItems = [];
if (localStorage.getItem('cartItems')) {
  cartItems = JSON.parse(localStorage.getItem('cartItems'));
  renderCartItems();
  updateTotalPrice();
}

function addToCart() {
  // Lấy thông tin từ phần tử product-content-right
  const image = document.querySelector('.product-content-right-img img').src;
  const name = document.querySelector('.product-content-right-name h3').textContent;
  const price = document.querySelector('.product-content-right-price strong').textContent;
  const color = document.querySelector('.product-content-right-color span').textContent;
  const sizeElements = document.querySelectorAll('.product-content-right-size span');
  const sizes = Array.from(sizeElements).map(span => span.textContent);
  const quantity = document.querySelector('#product-quantity').value;

  // Tạo đối tượng sản phẩm
  const product = {
    image,
    name,
    price,
    color,
    sizes,
    quantity
  };

  // Thêm sản phẩm vào giỏ hàng
  cartItems.push(product);
  renderCartItems();
  updateTotalPrice();

  // Lưu giỏ hàng vào Local Storage
  localStorage.setItem('cartItems', JSON.stringify(cartItems));
  
}

function renderCartItems() {
  // Xóa các phần tử hiện có trong giỏ hàng
  cart.innerHTML = '';

  // Render lại các sản phẩm trong giỏ hàng
  cartItems.forEach((product, index) => {
    const cartItem = createCartItemElement(product, index);
    cart.appendChild(cartItem);
  });
}

function createCartItemElement(product, index) {
  const cartItem = document.createElement('div');
  cartItem.classList.add('cart-item');
  cartItem.innerHTML = `
    <div class="cart-item" style = "display: flex;align-items: center;margin-bottom: 10px;">
      <div class="cart-item-image" style = "margin-right: 10px;">
        <img src="${product.image}" width="100px" height="100px" >
      </div>
      <div class="cart-item-details">
        <h4 style="color: #333;">${product.name}</h4>
        <p>Price: ${product.price}</p>
        <p>Color: ${product.color}</p>
        <p>Size: ${product.sizes.join(', ')}</p>
        <p>Quantity: ${product.quantity}</p>
        <button class="cart-item-remove" data-index="${index}" style = "margin-left: auto;background-color: black;color: #ffffff;padding: 5px 10px;border: none;border-radius: 4px;cursor: pointer;">Remove</button>
      </div>
    </div>
  `;
  return cartItem;
}

function removeFromCart(removeButton) {
  const index = removeButton.dataset.index;
  cartItems.splice(index, 1);
  renderCartItems();
  updateTotalPrice();
  localStorage.setItem('cartItems', JSON.stringify(cartItems));
 
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

function checkout() {
    // Lấy giá trị tổng từ thẻ span có id là "total"
    var total = document.getElementById("total").innerText;
        
     // Chuyển đến trang thanh toán và truyền giá trị tổng qua URL
    window.location.href = "payment.html?total=" + total;
}


