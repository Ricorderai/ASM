package com.petrichor.pojo;

public class Word {
    private Integer lw_id;
    private String writerId;
    private String writerContent;

    public Integer getLw_id() {
        return lw_id;
    }

    public void setLw_id(Integer lw_id) {
        this.lw_id = lw_id;
    }

    public String getWriterId() {
        return writerId;
    }

    public void setWriterId(String writerId) {
        this.writerId = writerId;
    }

    public String getWriterContent() {
        return writerContent;
    }

    public void setWriterContent(String writerContent) {
        this.writerContent = writerContent;
    }

    @Override
    public String toString() {
        return "Word{" +
                "lw_id=" + lw_id +
                ", writerId='" + writerId + '\'' +
                ", writerContent='" + writerContent + '\'' +
                '}';
    }
}
