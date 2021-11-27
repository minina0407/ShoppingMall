package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	

	private  static ProductRepository instance=new ProductRepository();
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	public static ProductRepository getInstance() {
		return instance;
	}
	public ArrayList<Product> getAllProducts(){	
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null
				&& product.getProductId().equals(productId)){
					productById = product;
					break;
				}
		}
		
		return productById;
		
	}
	
	public ProductRepository() {
		
		Product product_A = new Product("month1", "꽃다발 A 세트", 20000);
		product_A.setDescription("저렴한 가격대의 구성으로 많은 분들이 찾아주시는 구성입니다");
		product_A.setFilename("flower_S.JPG");
		Product product_B = new Product("month2", "꽃다발 B세트", 32000);
		product_B.setDescription("가성비 가격대의 구성으로 풍성한 구성을 원하신다면 꽃다발 B세트가 좋습니다");
		product_B.setFilename("flower_ssize.jpg");
		Product product_C = new Product("month3", "꽃다발 C세트", 40000);
		product_C.setDescription("풍성한 꽃다발을 원하신다면 선택하세요.");
		product_C.setFilename("flower_L_size.jpg");

		listOfProducts.add(product_A);
		listOfProducts.add(product_B);
		listOfProducts.add(product_C);		
	}

}