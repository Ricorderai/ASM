package com.petrichor.pojo;

public class Department {
    private String roomId;
    private String price;
    private String status;
    private Integer person;
    private Integer id;

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getPerson() {
        return person;
    }

    public void setPerson(Integer person) {
        this.person = person;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Department{" +
                "roomId='" + roomId + '\'' +
                ", price='" + price + '\'' +
                ", status='" + status + '\'' +
                ", person=" + person +
                ", id=" + id +
                '}';
    }
}
