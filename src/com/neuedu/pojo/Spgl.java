package com.neuedu.pojo;

import lombok.Data;

public class Spgl {
    private Integer productId;
    private String spName;
    private String spDes;
    private String spCount;
    private  Integer spId;

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getSpName() {
        return spName;
    }

    public void setSpName(String spName) {
        this.spName = spName;
    }

    public String getSpDes() {
        return spDes;
    }

    public void setSpDes(String spDes) {
        this.spDes = spDes;
    }

    public String getSpCount() {
        return spCount;
    }

    public void setSpCount(String spCount) {
        this.spCount = spCount;
    }

    public Integer getSpId() {
        return spId;
    }

    public void setSpId(Integer spId) {
        this.spId = spId;
    }

    @Override
    public String toString() {
        return "Spgl{" +
                "productId=" + productId +
                ", spName='" + spName + '\'' +
                ", spDes='" + spDes + '\'' +
                ", spCount='" + spCount + '\'' +
                ", spId=" + spId +
                '}';
    }
}
