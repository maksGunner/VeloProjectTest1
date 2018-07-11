package all.entity;

import all.resource.Status;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Frame extends Thing {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String brand;
    private String material;
    private String size;

    public Frame() {
    }

    public Frame(String brand, String material, String size) {
        this.brand = brand;
        this.material = material;
        this.size = size;
    }

    public Frame(String title, String img, String describe, int price, String status, String brand, String material, String size) {
        super(title, img, describe, price, status);
        this.brand = brand;
        this.material = material;
        this.size = size;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    @Override
    public String toString() {
        return "Frame{" +
                "brand='" + brand + '\'' +
                ", material='" + material + '\'' +
                ", size='" + size + '\'' +
                '}';
    }
}
