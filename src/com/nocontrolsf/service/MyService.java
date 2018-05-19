package com.nocontrolsf.service;

import com.nocontrolsf.bean.Jsgs;

import java.util.List;

/**
 * Created by NoControl on 2018/4/23.
 */
public interface MyService {
    public List<Jsgs> searchByKey(String solrKey, String solrValue);
    public List<Jsgs> searchHighLight(String solrKey, String solrValue);
    public Jsgs searchEntInfo(String solrKey, String solrValue);
}
