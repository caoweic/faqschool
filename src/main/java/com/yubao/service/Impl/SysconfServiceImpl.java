package com.yubao.service.Impl;

import com.yubao.dao.SysconfDao;
import com.yubao.model.Sysconf;
import com.yubao.service.SysconfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service
public class SysconfServiceImpl implements SysconfService {

    @Resource
    SysconfDao _dao;

    public String getVersion() {
        return _dao.getVersion();
    }

    public int getDownload() {
        return _dao.getDownload();
    }

    public void addDownload() {
        _dao.addDownload();
    }
}
