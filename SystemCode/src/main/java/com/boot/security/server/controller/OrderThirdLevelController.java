package com.boot.security.server.controller;

import com.boot.security.server.dao.OrderThirdLevelDao;
import com.boot.security.server.model.OrderFirstLevel;
import com.boot.security.server.model.OrderThirdLevel;
import com.boot.security.server.page.table.PageTableHandler;
import com.boot.security.server.page.table.PageTableRequest;
import com.boot.security.server.page.table.PageTableResponse;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/orderThirdLevels")
public class OrderThirdLevelController {

    @Autowired
    private OrderThirdLevelDao orderThirdLevelDao;


    @GetMapping("/{id}")
    @ApiOperation(value = "获取三级订单信息")
    public PageTableResponse list(PageTableRequest request,@PathVariable("id") Long firstLevelId) {
        return new PageTableHandler(new PageTableHandler.CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return orderThirdLevelDao.count(request.getParams());
            }
        }, new PageTableHandler.ListHandler() {

            @Override
            public List<OrderThirdLevel> list(PageTableRequest request) {
                return orderThirdLevelDao.listThirdLevel(request.getParams(),request.getOffset(),request.getLimit(),firstLevelId);
            }
        }).handle(request);
    }
}
