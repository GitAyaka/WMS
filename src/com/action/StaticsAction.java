package com.action;

import java.net.DatagramPacket;
import java.rmi.MarshalledObject;
import java.util.*;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.DefaultTextProvider;
import org.springframework.beans.factory.annotation.Autowired;

import com.dao.JiesuantypeDAO;
import com.dao.ShoufeiDAO;
import com.dao.ShuibiaoDAO;
import com.dao.ShuifeijiageDAO;
import com.dao.UserDAO;
import com.entity.Jiesuantype;
import com.entity.Shoufei;
import com.entity.Shuibiao;
import com.entity.Shuifeijiage;
import com.entity.User;
import com.opensymphony.xwork2.ModelDriven;

import javax.sql.rowset.spi.SyncResolver;

public class StaticsAction extends BaseAction implements ModelDriven<Shoufei> {
    @Autowired
    private ShoufeiDAO shoufeiDAO;
    @Autowired
    private ShuibiaoDAO shuibiaoDAO;
    @Autowired
    private UserDAO userDAO;
    @Autowired
    private JiesuantypeDAO jiesuantypeDAO;

    @Autowired
    private ShuifeijiageDAO shuifeijiageDAO;

    public ShuifeijiageDAO getShuifeijiageDAO() {
        return shuifeijiageDAO;
    }

    public void setShuifeijiageDAO(ShuifeijiageDAO shuifeijiageDAO) {
        this.shuifeijiageDAO = shuifeijiageDAO;
    }

    public ShuibiaoDAO getShuibiaoDAO() {
        return shuibiaoDAO;
    }

    public void setShuibiaoDAO(ShuibiaoDAO shuibiaoDAO) {
        this.shuibiaoDAO = shuibiaoDAO;
    }

    public UserDAO getUserDAO() {
        return userDAO;
    }

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    public JiesuantypeDAO getJiesuantypeDAO() {
        return jiesuantypeDAO;
    }

    public void setJiesuantypeDAO(JiesuantypeDAO jiesuantypeDAO) {
        this.jiesuantypeDAO = jiesuantypeDAO;
    }

    // 模型驱动使用的对象，通过登录执行的方法将用户名和密码封装在Shoufei对象里.
    private Shoufei shoufei = new Shoufei();

    public Shoufei getModel() {
        return shoufei;
    }

    public String statics() {


        List datemoneyList = shoufeiDAO.findDateMoney();


        System.out.println("shoufeiList:" + datemoneyList);
        int size = datemoneyList.size();
        int sum[] = new int[size];
        for(int i=0 ; i < size ;i++){
            sum [i] =0;
        }
        Object[] datemoneyObject = new Object[3];
        String[] date = new String[size];
        Integer[] money = new Integer[size];
        for (int i = 0; i < size; i++) {
            datemoneyObject = (Object[]) datemoneyList.get(i);
            date[i] = (String) datemoneyObject[1];
            money[i] = (Integer) datemoneyObject[2];
        }



        for (int i = 0; i < size-1; i++){
            for (int j = 0; j < size-i-1; j++) {
                if(date[j].compareTo(date[j+1]) > 0){
                    String temp = date[j];
                    Integer temp1 = money[j];
                    date[j] = date[j+1];
                    date[j+1] = temp;
                    money[j] = money[j+1];
                    money[j+1] = temp1;
                }
            }
        }


        for (int i = 0; i < size; i++) {
            date[i] = date[i].substring(0, 7);
            System.out.println(date[i]);
        }

        for (int i = 0; i < size; i++) {
            System.out.println(money[i]);
        }
        for (int i = 0; i < size; i++) {
            for (int j = i; j < size-1 ; j++) {
                if(date[i].compareTo(date[j+1]) == 0) {
                    sum[i] = sum[i] + money[j+1];
                }
            }
        }

        int count = 1;
//        System.out.println("date:" + date[0].substring(0, 7) + " " + "sum:" + (sum[0] + money[0]));
        for (int i = 1; i < size; i++) {
            if(date[i].compareTo(date[i-1]) != 0){
//                System.out.println("date:" + date[i].substring(0, 7) + " " + "sum:" + (sum[i] + money[i]));
                count++;
            }
        }
        System.out.println("count:" + count);
        String[] datePlot = new String[count];
        Integer[] moneyPlot = new Integer[count];
        datePlot[0] = date[0];
        moneyPlot[0] = sum[0] + money[0];
        int cc = 1;
        for (int i = 1; i < size; i++) {
            if(date[i].compareTo(date[i-1]) != 0){
                datePlot[cc] = date[i];
                moneyPlot[cc] = money[i] + sum[i];
                cc++;
            }
        }
        for (int i = 0; i < count; i++){
            System.out.println(datePlot[i] + "  plot  " + moneyPlot[i]);
        }
        Map request = getRequestMap();
        request.put("datemoneyList", datemoneyList);

        ActionContext ac=ActionContext.getContext();
        Map session=ac.getSession();
        session.put("datePlot",datePlot);
        session.put("moneyPlot",moneyPlot);
        session.put("count",count);

        return "static";
    }


    public ShoufeiDAO getShoufeiDAO() {
        return shoufeiDAO;
    }

    public void setShoufeiDAO(ShoufeiDAO shoufeiDAO) {
        this.shoufeiDAO = shoufeiDAO;
    }

    public Shoufei getShoufei() {
        return this.shoufei;
    }

    public void setShoufei(Shoufei shoufei) {
        this.shoufei = shoufei;
    }

}