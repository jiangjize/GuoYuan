package cn.jjz.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/10/27.
 */
public class Power {
    private int s_pid; //id
    private String s_purl;  //路径
    private String s_pname; //名称 text
    private String s_picon; //小图标
    private int s_pparent;  //区分节点
    private List<Power> children=new ArrayList<Power>();//子权限集合

    public List<Power> getChildren() {
        return children;
    }

    public void setChildren(List<Power> children) {
        this.children = children;
    }

    public int getS_pid() {
        return s_pid;
    }

    public void setS_pid(int s_pid) {
        this.s_pid = s_pid;
    }

    public String getS_purl() {
        return s_purl;
    }

    public void setS_purl(String s_purl) {
        this.s_purl = s_purl;
    }

    public String getS_pname() {
        return s_pname;
    }

    public void setS_pname(String s_pname) {
        this.s_pname = s_pname;
    }

    public String getS_picon() {
        return s_picon;
    }

    public void setS_picon(String s_picon) {
        this.s_picon = s_picon;
    }

    public int getS_pparent() {
        return s_pparent;
    }

    public void setS_pparent(int s_pparent) {
        this.s_pparent = s_pparent;
    }

    @Override
    public String toString() {
        return "Power{" +
                "s_pid=" + s_pid +
                ", s_purl='" + s_purl + '\'' +
                ", s_pname='" + s_pname + '\'' +
                ", s_picon='" + s_picon + '\'' +
                ", s_pparent=" + s_pparent +
                ", children=" + children +
                '}';
    }
}
