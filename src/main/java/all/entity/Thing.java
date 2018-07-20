package all.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Thing {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String title;
    private String img;
    private String imgShort;
    private int price;
    private String category;


    public Thing() {
    }

    public Thing(String title, String img, String imgShort, int price, String category) {
        this.title = title;
        this.img = img;
        this.imgShort = imgShort;
        this.price = price;
        this.category = category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getImgShort() {
        return imgShort;
    }

    public void setImgShort(String imgShort) {
        this.imgShort = imgShort;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Thing{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", img='" + img + '\'' +
                ", imgShort='" + imgShort + '\'' +
                ", price=" + price +
                ", category='" + category + '\'' +
                '}';
    }
}

