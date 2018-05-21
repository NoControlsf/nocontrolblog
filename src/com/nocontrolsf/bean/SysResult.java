package com.nocontrolsf.bean;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/6/30.
 */
public class SysResult {
    private int pageSize;
    private int pageNumber;
    private List<?> rows;
    private Map<String, Object> maprow;
    private int total;

    public SysResult() {
    }
    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public List<?> getRows() {
        return rows;
    }

    public void setRows(List<?> rows) {
        this.rows = rows;
    }

    public Map<String, Object> getMaprow() {
        return maprow;
    }

    public void setMaprow(Map<String, Object> maprow) {
        this.maprow = maprow;
    }




}
