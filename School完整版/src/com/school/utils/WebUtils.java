package com.school.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class WebUtils {
    public static int makeUUID(){
        int hashCodeV = UUID.randomUUID().toString().hashCode();
        if(hashCodeV < 0) {
            hashCodeV = - hashCodeV;
        }
        return hashCodeV;
    }
    public static String makeThisTime(){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return df.format(new Date());
    }
}
