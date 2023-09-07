package com.example.controller;

import com.example.common.Result;
import com.example.entity.GoodsInfo;
import com.example.entity.Account;
import com.example.service.GoodsInfoService;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping(value = "/goodsInfo")
public class GoodsInfoController {
    @Resource
    private GoodsInfoService goodsInfoService;

    @PostMapping
    public Result add(@RequestBody GoodsInfo goodsInfo, HttpServletRequest request) {
        Account user = (Account) request.getSession().getAttribute("user");
        goodsInfo.setUserId(user.getId());
        goodsInfo.setLevel(user.getLevel());
        goodsInfoService.add(goodsInfo);
        return Result.success(goodsInfo);
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Long id) {
        goodsInfoService.delete(id);
        return Result.success();
    }

    @PutMapping
    public Result update(@RequestBody GoodsInfo goodsInfo) {
        goodsInfoService.update(goodsInfo);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result detail(@PathVariable Long id) {
        GoodsInfo goodsInfo = goodsInfoService.findById(id);
        return Result.success(goodsInfo);
    }

    @GetMapping
    public Result all() {
        return Result.success(goodsInfoService.findAll());
    }

    @GetMapping("/page/{name}")
    public Result page(@RequestParam(defaultValue = "1") Integer pageNum,
                                            @RequestParam(defaultValue = "10") Integer pageSize,
                                            @PathVariable String name,
                                            HttpServletRequest request) {
        return Result.success(goodsInfoService.findPage(pageNum, pageSize, name, request));
    }

    @GetMapping("/findByType/{typeId}")
    public Result findByType(@PathVariable Integer typeId) {
        return Result.success(goodsInfoService.findByType(typeId));
    }

    @GetMapping("/recommend")
    public Result recommendGoods(@RequestParam(defaultValue = "1") Integer pageNum,
                                                      @RequestParam(defaultValue = "10") Integer pageSize) {
        return Result.success(goodsInfoService.findRecommendGoods(pageNum, pageSize));
    }

    @GetMapping("/sales")
    public Result sales(@RequestParam(defaultValue = "1") Integer pageNum,
                                             @RequestParam(defaultValue = "10") Integer pageSize) {
        return Result.success(goodsInfoService.findHotSalesGoods(pageNum, pageSize));
    }

    /**
     * 查询用户买到过的所有商品
     * @return
     */
    @GetMapping("/comment/{userId}/{level}")
    public Result orderGoods(@PathVariable("userId") Long userId,
                                              @PathVariable("level") Integer level) {
        return Result.success(goodsInfoService.getOrderGoods(userId, level));
    }

    @GetMapping("/searchGoods")
    public Result searchGoods(@RequestParam String text) {
        return Result.success(goodsInfoService.searchGoods(text));
    }
}
