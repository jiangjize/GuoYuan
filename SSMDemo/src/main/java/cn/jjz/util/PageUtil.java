package cn.jjz.util;

import cn.jjz.entity.IZixun;

import java.util.List;

/**
 * Created by lenovo on 2017/11/10.
 */
public class PageUtil {
    //当前页数
    private int pageIndex;
    //每页要显示的记录数
    private int pageSize;
    //总页数
    private int pagetotalpages;
    //集合
    private List<IZixun> iZixuns;

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPagetotalpages() {
        return pagetotalpages;
    }

    public void setPagetotalpages(int pagetotalpages) {
        this.pagetotalpages = pagetotalpages;
    }

    public List<IZixun> getiZixuns() {
        return iZixuns;
    }

    public void setiZixuns(List<IZixun> iZixuns) {
        this.iZixuns = iZixuns;
    }
}
