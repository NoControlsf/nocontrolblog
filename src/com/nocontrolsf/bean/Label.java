package com.nocontrolsf.bean;

/**
 * Created by Administrator on 2018/5/21.
 */
public class Label {
    private String label_id;
    private String label_name;
    private String classification_id;
    private String update_time;

    public Label(String label_id, String label_name) {
        this.label_id = label_id;
        this.label_name = label_name;
    }

    public Label() {
    }

    public String getLabel_id() {
        return label_id;
    }

    public void setLabel_id(String label_id) {
        this.label_id = label_id;
    }

    public String getLabel_name() {
        return label_name;
    }

    public void setLabel_name(String label_name) {
        this.label_name = label_name;
    }

    public String getClassification_id() {
        return classification_id;
    }

    public void setClassification_id(String classification_id) {
        this.classification_id = classification_id;
    }

    public String getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(String update_time) {
        this.update_time = update_time;
    }

    @Override
    public String toString() {
        return "Label{" +
                "label_id='" + label_id + '\'' +
                ", label_name='" + label_name + '\'' +
                ", classification_id='" + classification_id + '\'' +
                ", update_time='" + update_time + '\'' +
                '}';
    }
}
