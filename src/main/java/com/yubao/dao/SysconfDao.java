package com.yubao.dao;

import com.yubao.model.Sysconf;
import org.springframework.stereotype.Repository;


@Repository
public interface SysconfDao {
    //如果采用sql的话，可以不用SqlSessionFactoryBean配置里的mapperLocations
    //@Select("SELECT * FROM sysconf  WHERE `key`='version' LIMIT 1")
    String getVersion();

    int getDownload();
    void addDownload();
}
