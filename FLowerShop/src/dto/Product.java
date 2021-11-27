package dto;
import java.io.Serializable;
public class Product implements Serializable{
	private String ProductId;
	private String pname;
	private  Integer unitPrice;
	private String description;
    private long unitsInStock;
    private int quantity; 
    private String filename;
	public Product() {
super();
}
public Product(String ProductId,String pname,Integer unitPrice) {
	this.ProductId=ProductId;
	this.pname=pname;
	this.unitPrice=unitPrice;
}
public String getProductId() {
	return ProductId;
}
public void setpname(String ProductId) {
	this.pname= pname;
}
public String getpname() {
	return pname;
}
public void setProductId(String ProductId) {
	this.ProductId= ProductId;
}
public void setUnitPrice(Integer unitPrice) {
	this.unitPrice=unitPrice;
}
public Integer getUnitPrice() {
	return unitPrice;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description=  description;
}
public String getFilename() {
	return filename;
}
public void setFilename(String filename) {
	this.filename = filename;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
    this.quantity = quantity;
}


}