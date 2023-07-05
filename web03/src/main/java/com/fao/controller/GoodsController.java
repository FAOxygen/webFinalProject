package com.fao.controller;

import com.fao.pojo.*;
import com.fao.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/goods")
public class GoodsController {
    @Autowired
    @Qualifier("goodsService")
    GoodsServiceImpl goodsService;
    @Autowired
    @Qualifier("goodstypeService")
    GoodstypeServiceImpl goodstypeService;

    @Autowired
    @Qualifier("ordersService")
    OrdersServiceImpl ordersService;

    @Autowired
    @Qualifier("shoppingcartService")
    ShoppingcartServiceImpl shoppingcartService;

    @RequestMapping("/allGoods")
    public String allGoods(Model model) {
        Map<String, List<Goods>> map = new HashMap<>();
        //首先使用 goodsService.findAllGoods() 获取所有商品信息
        List<Goods> allGoods = goodsService.queryAllGoods();
        //使用 goodsTypeService.findAllType() 获取所有商品类型信息；
        List<Goodstype> goodsTypes = goodstypeService.queryAllGoodstype();
        //对所有商品逐一进行遍历，找到它所属的商品类型，并将该商品添加到对应类型的列表中
        for (Goods goods : allGoods) {
            int typeId = goods.getTypeId();
            String typename = "";
            for (Goodstype goodsType : goodsTypes) {
                if (typeId == goodsType.getTypeId()) {
                    typename = goodsType.getType();
                    break;
                }
            }
            if (typename != null && !typename.isEmpty() && !map.containsKey(typename)) {
                List<Goods> list = new ArrayList<>();
                list.add(goods);
                map.put(typename, list);
            } else {
                map.get(typename).add(goods);
            }
        }
        //将分类后的商品列表以商品类型为键封装成一个 Map 对象，并将该对象传递给视图模板引擎（Model），以供前端页面展示实现这个的是那行代码
        model.addAttribute("goodsMap", map);
        //返回商品列表
        return "allGoods";
    }

    //1.跳转新增商品页面
    @RequestMapping("/toAddGoods")
    public String toAddGoods() {
        return "addGoods";
    }


    @RequestMapping("/toShoppingCart")
    public String toShoppingCart() {
        return "shoppingcart";
    }

    //添加商品
    @RequestMapping("/addGoods")
    public String addGoods(Goods goods) {
        System.out.println(goods);
        goodsService.addGoods(goods);
        return "redirect:/goods/allGoods";
    }

    //2.跳转到修改商品页面(通过id将goods属性带过来修改)
    @RequestMapping("/toUpdateGoods")
    public String toUpdateGoods(Model model, int id) {
        Goods goods = goodsService.queryGoodsById(id);
        System.out.println(goods);
        model.addAttribute("goods", goods);
        return "updateGoods";
    }

    //修改商品
    @RequestMapping("/updateGoods")
    public String updateGoods(Model model, Goods goods) {
        System.out.println(goods);
        goodsService.updateGoods(goods);
        Goods good = goodsService.queryGoodsById(goods.getGoodsId());
        model.addAttribute("goods", good);
        return "redirect:/goods/allGoods";
    }

    //删除商品
    //增加RestFul风格 (将goodsId参数传到访问路径上)
    @RequestMapping("/deleteGoods/{goodsId}")
    public String deleteGoods(@PathVariable("goodsId") int id) {
        goodsService.deleteGoodsById(id);
        return "redirect:/goods/allGoods";
    }

    @RequestMapping("/queryGoods")
    public String querygoodsByname(String querygoodsByname, Model model) {
        //调用goodsService对象中的findGoodsByName方法，获取符合条件的商品列表，然后将其存入List<Goods>对象中
        List<Goods> goods = goodsService.queryGoodsByName(querygoodsByname);
        System.out.println("search:" + querygoodsByname + ":" + goods);
        List<Goods> list = new ArrayList<>();
        if (goods != null) {
            for (Goods goods1 : goods) {
                list.add(goods1);
            }
        } else {
            //如果该列表为空，则调用goodsService对象中的findAllGoods方法，
            // 获取全部商品列表，并在模型对象中添加一个“error”属性，值为“未查到”
            list = goodsService.queryAllGoods();
            model.addAttribute("error", "未查到");
        }
        //将处理后的商品列表 list 赋值给模型对象，属性名为 "list"，以便在展示页面中获取该列表进行展示。
        model.addAttribute("list", list);
        //将处理结果重定向到“/goods/togoodsdetail”路径，页面会显示查询到的商品列表。
        return "allGoods";
    }

    @RequestMapping("/togoodsdetail")
    public String listGoods(Model model) {
        //查询所有商品信息，并将结果保存到 goodsList 变量中。
        List<Goods> goodsList = goodsService.queryAllGoods();
        //将 goodsList 这个商品列表添加到 Spring MVC 框架中的 model 对象中
        model.addAttribute("goodsList", goodsList);
        System.out.println("商品" + goodsList);
        //最终返回视图
        return "detail";
    }

    @RequestMapping("/mycart")
    public String mycart(HttpSession session,Model model){
        User user = (User) session.getAttribute("user");
        System.out.println("mycart:"+user);
        List <Shoppingcart> list=shoppingcartService.queryByUserId(user.getUserId());
        List<MyCart> myCartList =new ArrayList<>();
        for (Shoppingcart cart:list){
            Goods goods=goodsService.queryGoodsById(cart.getCartId());
            MyCart myCart =new MyCart(goods.getGoodsName(),cart.getCartNum(),goods.getPrice(),cart.getCartNum()*goods.getPrice());
            myCartList.add(myCart);
        }
        System.out.println("mycarts:"+myCartList);
        model.addAttribute("mycarts",myCartList);
        return "shoppingcart";
    }

    @RequestMapping("/addCart")
    //获取请求参数goodsId和num：
    public String addCart(int goodsId, int num, HttpSession session, Model model){
        System.out.println("addCart:" + goodsId + "  " + num);
        //获取当前用户对象User：
        User user =(User) session.getAttribute("user");
        //判断用户是否登录，如果未登录跳转到登录页面：
        if (user == null){
            return "login";
        }
        //查询商品信息：
        Goods goods = goodsService.queryGoodsById(goodsId);
        //判断商品库存是否足够：
        if (goods.getGoodsNum()<num){
            model.addAttribute("msg","库存" + goods.getGoodsNum());
            return "redirect:/goods/detail";
        }
        //创建购物车对象：
        Shoppingcart cart = new Shoppingcart();
        cart.setUserId(user.getUserId());
        cart.setCartNum(num);
        cart.setGoodsId(goodsId);
        //将购物车记录插入到数据库中：
        int result = shoppingcartService.addShoppingcart(cart);
        if (result>0){
            //查询当前用户的购物车记录：
            List<Shoppingcart> carts = shoppingcartService.queryAllCarts();
            //将购物车列表添加到Model对象中：
            model.addAttribute("cart",carts);
            System.out.println("cart:"+carts);
            return "redirect:/goods/mycart";
        }
        model.addAttribute("msg","添加失败");
        //重定向到其他视图并携带提示信息：
        return "redirect:/goods/detail"+goodsId;
    }

    @RequestMapping("/deletecart")
    public String deletecart(HttpSession session, Model model) {
        try {
            User user = (User) session.getAttribute("user");//首先通过HttpSession获取当前用户对象User。
            if (user == null) {
                // 如果用户未登录，重定向到登录页面
                return "redirect:/login";
            }
            //如果用户已登录，则调用shoppingCartService的clear方法，该方法传入用户ID，
            // 用于清空该用户的购4. 根据清空结果，向Model对象中添加相应的提示信息。
            int count = shoppingcartService.clear(user.getUserId());
            if (count > 0) {
                model.addAttribute("message", "清空购物车成功");
            } else {
                model.addAttribute("message", "购物车已经为空");
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("message", "清空购物车失败，请稍后再试");
        }
        //最后返回视图名"shoppingcart"，即跳转到购物车页面
        return "shoppingcart";
    }
}
