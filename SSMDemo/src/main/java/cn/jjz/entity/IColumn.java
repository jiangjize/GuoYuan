package cn.jjz.entity;

import javax.xml.transform.stream.StreamResult;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/11/5.
 */
public class IColumn {
    private int s_cid;   //id
    private String s_ccode;  //栏目编码
    private String s_cname;   //栏目名称
    private int s_csort;    //排序
    private int s_cparent;    //父级编码
    private int s_cstatus;     //状态
    private String s_cremark;    //描述
    private List<IColumn> children=new ArrayList<IColumn>();

    @Override
    public String toString() {
        return "IColumn{" +
                "s_cid=" + s_cid +
                ", s_ccode='" + s_ccode + '\'' +
                ", s_cname='" + s_cname + '\'' +
                ", s_csort=" + s_csort +
                ", s_cparent=" + s_cparent +
                ", s_cstatus=" + s_cstatus +
                ", s_cremark='" + s_cremark + '\'' +
                ", children=" + children +
                '}';
    }

    public List<IColumn> getChildren() {
        return children;
    }

    public void setChildren(List<IColumn> children) {
        this.children = children;
    }

    public int getS_cid() {
        return s_cid;
    }

    public void setS_cid(int s_cid) {
        this.s_cid = s_cid;
    }

    public String getS_ccode() {
        return s_ccode;
    }

    public void setS_ccode(String s_ccode) {
        this.s_ccode = s_ccode;
    }

    public String getS_cname() {
        return s_cname;
    }

    public void setS_cname(String s_cname) {
        this.s_cname = s_cname;
    }

    public int getS_csort() {
        return s_csort;
    }

    public void setS_csort(int s_csort) {
        this.s_csort = s_csort;
    }

    public int getS_cparent() {
        return s_cparent;
    }

    public void setS_cparent(int s_cparent) {
        this.s_cparent = s_cparent;
    }

    public int getS_cstatus() {
        return s_cstatus;
    }

    public void setS_cstatus(int s_cstatus) {
        this.s_cstatus = s_cstatus;
    }

    public String getS_cremark() {
        return s_cremark;
    }

    public void setS_cremark(String s_cremark) {
        this.s_cremark = s_cremark;
    }
}
