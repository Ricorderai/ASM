package com.petrichor.pojo;

public class Reply {
    private Integer lr_id;
    private String replyId;
    private String replyContent;

    public Integer getLr_id() {
        return lr_id;
    }

    public void setLr_id(Integer lr_id) {
        this.lr_id = lr_id;
    }

    public String getReplyId() {
        return replyId;
    }

    public void setReplyId(String replyId) {
        this.replyId = replyId;
    }

    public String getReplyContent() {
        return replyContent;
    }

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent;
    }

    @Override
    public String toString() {
        return "Reply{" +
                "lr_id=" + lr_id +
                ", replyId='" + replyId + '\'' +
                ", replyContent='" + replyContent + '\'' +
                '}';
    }
}
