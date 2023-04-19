package com.google.controller;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.bean.AddressBean;
import com.google.bean.CartBean;
import com.google.bean.OrderBean;
import com.google.bean.OrderDetailBean;
import com.google.bean.ProductBean;
import com.google.bean.ProductImageBean;
import com.google.bean.UserBean;
import com.google.dao.AddressDao;
import com.google.dao.CartDao;
import com.google.dao.OrderDao;
import com.google.dao.ProductDao;
import com.google.dao.ProductImageDao;

@Controller
public class BuyerController {

	@Autowired
	ProductDao productDao;

	@Autowired
	ProductImageDao productImageDao;
	
	@Autowired
	AddressDao addressDao;
	
	@Autowired
	CartDao cartDao;
	
	@Autowired
	OrderDao orderDao;
	
	@GetMapping(value = {"/","/welcome"})
	public String welcome(Model model) {
		List<ProductBean> latestProduct = productDao.getAllLatestProducts();
		List<ProductBean> topSellingProducts = productDao.getAllTopSellingProducts();
		model.addAttribute("latestProducts", latestProduct);
		model.addAttribute("topSellingProducts", topSellingProducts);
		return "Welcome";
	}

	// login
	@GetMapping("/home")
	public String home() {
		return "redirect:/welcome";
	}

	@GetMapping("/seedetails")
	public String seeDetails(@RequestParam("productId") Integer productId, Model model) {
		ProductBean product = productDao.getProductById(productId);
		
		List<ProductImageBean> productImages =productImageDao.getImagesByProductId(productId);
		model.addAttribute("product", product);
		model.addAttribute("productImages",productImages);
		return "ProductDetail";
	}
	
	@GetMapping("/newaddress")
	public String newAddress() {
		return "NewAddress";
	}
	
	@PostMapping("/saveaddress")
	public String saveAddress(AddressBean address) {
		addressDao.addAddress(address);	
		return "redirect:/myaddress";
	}
	@GetMapping("/myaddress")
	public String myAddress(Model model,HttpSession session) {
		UserBean user = (UserBean) session.getAttribute("user");
		Integer userId = user.getUserId();
		
		List<AddressBean> address = addressDao.getAllAddressByUser(userId);
		model.addAttribute("address",address);
		return "MyAddress";
	}

	@GetMapping("/checkout")
	public String checkout(HttpSession session,Model model) {
		UserBean user = (UserBean) session.getAttribute("user");

		List<CartBean> mycart = cartDao.myCart(user.getUserId());
		
		List<AddressBean> address =  addressDao.getAllAddressByUser(user.getUserId());
		
		model.addAttribute("mycart",mycart);
		model.addAttribute("address",address);

		return "Checkout";
	}


	@PostMapping("/placeorder")
	public String placeOrder(AddressBean addressBean,HttpSession session) {
		UserBean user = (UserBean) session.getAttribute("user");
		Integer addressId = addressBean.getAddressId(); 
		LocalDate today = LocalDate.now();
		Integer status = 7; //placed
		Integer orderId = (int)(Math.random()*10000000);//565475455 
		
		//amount 
		List<CartBean> mycart = cartDao.myCart(user.getUserId());
		Integer totalAmount =0 ; 
		for(CartBean c:mycart) {
			totalAmount = (totalAmount)+(c.getPrice()*c.getQty());
		}
		System.out.println(orderId);
		System.out.println(today);
		System.out.println(user.getUserId());
		System.out.println(totalAmount);
		System.out.println(status);
		System.out.println(addressId);
		
		OrderBean orderBean = new OrderBean();
		orderBean.setAddressId(addressId);
		orderBean.setOrderDate(today.toString());
		orderBean.setOrderId(orderId);
		orderBean.setUserId(user.getUserId());
		orderBean.setStatus(status);
		orderBean.setTotalAmount(totalAmount);
		
		orderDao.addOrder(orderBean);
		for(CartBean c:mycart) {
			orderDao.addOrderDetail(c, orderId);
		}
		
		
		cartDao.removeItemsFromCart(user.getUserId());
		
		
		return "redirect:/myorders";
	}

	@GetMapping("/myorders")
	public String myOrders(HttpSession session,Model model) {
		UserBean user = (UserBean) session.getAttribute("user");
		
		List<OrderBean> myorders = orderDao.getOrdersByUser(user.getUserId());
		model.addAttribute("myorders",myorders);
		return "MyOrder";	
				
	}
	@GetMapping("/orderdetails")
	public String orderDetails(@RequestParam("orderId") Integer orderId,Model model) {
		List<OrderDetailBean> myorderdetail = orderDao.getOrderDetailByOrder(orderId);
		OrderBean order = orderDao.getOrdersByOrderId(orderId);
		
		model.addAttribute("order",order);
		model.addAttribute("myorderdetail",myorderdetail);
		
		System.out.println("Order =>"+order);
		System.out.println("OrderDetail =>"+myorderdetail);
		return "MyOrderDetail";
	}
	
	
	
	
	
}

