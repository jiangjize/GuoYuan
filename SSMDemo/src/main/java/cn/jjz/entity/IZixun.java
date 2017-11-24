package cn.jjz.entity;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by lenovo on 2017/11/6.
 */
public class IZixun {
    private int s_gnid;
    private  String s_gntitle;
    private int s_gncreator;
    private int s_cid;
    private int s_gnclick;
    private int s_gnstatus;
    private Date s_gnretimes;
    private String retimes;
    private String s_gnimage;
    private String s_gnzhaiyao;
    private String s_gnzhengwen;
    private int s_gntcolor;
    private String s_gncrux;
    private IColumn iColumn;
    private Us us;

    public Us getUs() {
        return us;
    }

    public void setUs(Us us) {
        this.us = us;
    }

    public IColumn getiColumn() {
        return iColumn;
    }

    public void setiColumn(IColumn iColumn) {
        this.iColumn = iColumn;
    }

    public String getRetimes() {
        SimpleDateFormat sp=new SimpleDateFormat("yyyy/MM/dd");
        String a=sp.format(getS_gnretimes());
        return a;
    }

    public void setRetimes(String retimes) {
        SimpleDateFormat sp=new SimpleDateFormat("yyyy/MM/dd");
        String a=sp.format(getS_gnretimes());
        this.retimes = a;
    }


    public String getS_gnimage() {
        return s_gnimage;
    }

    public void setS_gnimage(String s_gnimage) {
        this.s_gnimage = s_gnimage;
    }

    public String getS_gnzhaiyao() {
        return s_gnzhaiyao;
    }

    public void setS_gnzhaiyao(String s_gnzhaiyao) {
        this.s_gnzhaiyao = s_gnzhaiyao;
    }

    public String getS_gnzhengwen() {
        return s_gnzhengwen;
    }

    public void setS_gnzhengwen(String s_gnzhengwen) {
        this.s_gnzhengwen = s_gnzhengwen;
    }

    public int getS_gntcolor() {
        return s_gntcolor;
    }

    public void setS_gntcolor(int s_gntcolor) {
        this.s_gntcolor = s_gntcolor;
    }

    public String getS_gncrux() {
        return s_gncrux;
    }

    public void setS_gncrux(String s_gncrux) {
        this.s_gncrux = s_gncrux;
    }

    public int getS_gnid() {
        return s_gnid;
    }

    public void setS_gnid(int s_gnid) {
        this.s_gnid = s_gnid;
    }

    public String getS_gntitle() {
        return s_gntitle;
    }

    public void setS_gntitle(String s_gntitle) {
        this.s_gntitle = s_gntitle;
    }

    public int getS_gncreator() {
        return s_gncreator;
    }

    public void setS_gncreator(int s_gncreator) {
        this.s_gncreator = s_gncreator;
    }

    public int getS_cid() {
        return s_cid;
    }

    public void setS_cid(int s_cid) {
        this.s_cid = s_cid;
    }

    public int getS_gnclick() {
        return s_gnclick;
    }

    public void setS_gnclick(int s_gnclick) {
        this.s_gnclick = s_gnclick;
    }

    public int getS_gnstatus() {
        return s_gnstatus;
    }

    public void setS_gnstatus(int s_gnstatus) {
        this.s_gnstatus = s_gnstatus;
    }

    public Date getS_gnretimes() {

        return s_gnretimes;
    }

    public void setS_gnretimes(Date s_gnretimes) throws ParseException {


        this.s_gnretimes = s_gnretimes;
    }
}
