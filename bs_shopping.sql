/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50531
 Source Host           : localhost:3306
 Source Schema         : bs_shopping

 Target Server Type    : MySQL
 Target Server Version : 50531
 File Encoding         : 65001

 Date: 16/08/2023 16:16:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickName` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(10) NULL DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  `phone` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `code` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '编号',
  `email` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `account` double(10, 2) NULL DEFAULT NULL COMMENT '余额',
  `level` int(10) NOT NULL DEFAULT 1 COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 22, '2023-08-16 10:39:22', '18843232356', '上海市', '111', 'aa@163.com', 0.00, 1);
INSERT INTO `admin_info` VALUES (2, 'admin2', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 23, '2023-08-16 10:39:22', '18843232356', '北京市', '222', 'bb@163.com', 0.00, 1);
INSERT INTO `admin_info` VALUES (3, 'admin3', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '女', 32, '2023-08-16 10:39:22', '18843232356', '合肥市', '333', 'cc@163.com', 0.00, 1);
INSERT INTO `admin_info` VALUES (4, 'admin4', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '女', 24, '2023-08-16 10:39:22', '18843232356', '北京市', '444', 'hahaha@126.com', 0.00, 1);
INSERT INTO `admin_info` VALUES (5, 'admin5', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 25, '2023-08-16 10:39:22', '18843232356', '合肥市', '555', 'hello@126.com', 0.00, 1);
INSERT INTO `admin_info` VALUES (6, 'admin6', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 26, '2023-08-16 10:39:22', '18843232356', '北京市', '666', '1212@qq.com', 0.00, 1);
INSERT INTO `admin_info` VALUES (7, 'admin7', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 21, '2023-08-16 10:39:22', '18843232356', '合肥市', '777', '8765@qq.com', 0.00, 1);
INSERT INTO `admin_info` VALUES (8, 'admin8', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 31, '2023-08-16 10:39:22', '18843232356', '北京市', '888', '9080@qq.com', 0.00, 1);
INSERT INTO `admin_info` VALUES (9, 'admin9', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 34, '2023-08-16 10:39:22', '18843232356', '合肥市', '999', 'shjs@126.com', 0.00, 1);
INSERT INTO `admin_info` VALUES (10, 'admin10', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '女', 33, '2023-08-16 10:39:22', '18843232356', '深圳市', '000', '666@qq.com', 0.00, 1);

-- ----------------------------
-- Table structure for advertiser_info
-- ----------------------------
DROP TABLE IF EXISTS `advertiser_info`;
CREATE TABLE `advertiser_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告名称',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '公告内容',
  `time` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of advertiser_info
-- ----------------------------
INSERT INTO `advertiser_info` VALUES (1, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-16 10:39:22');
INSERT INTO `advertiser_info` VALUES (2, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-16 10:39:22');
INSERT INTO `advertiser_info` VALUES (3, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-16 10:39:22');
INSERT INTO `advertiser_info` VALUES (4, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-16 10:39:22');
INSERT INTO `advertiser_info` VALUES (5, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-16 10:39:22');
INSERT INTO `advertiser_info` VALUES (6, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-16 10:39:22');
INSERT INTO `advertiser_info` VALUES (7, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-16 10:39:22');
INSERT INTO `advertiser_info` VALUES (8, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-16 10:39:22');
INSERT INTO `advertiser_info` VALUES (9, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-16 10:39:22');
INSERT INTO `advertiser_info` VALUES (10, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-16 10:39:22');

-- ----------------------------
-- Table structure for cart_info
-- ----------------------------
DROP TABLE IF EXISTS `cart_info`;
CREATE TABLE `cart_info`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `count` int(10) NOT NULL DEFAULT 0 COMMENT '数量',
  `goodsId` bigint(10) NOT NULL DEFAULT 0 COMMENT '所属商品',
  `userId` bigint(10) NOT NULL DEFAULT 0 COMMENT '所属用户',
  `level` int(10) NULL DEFAULT NULL COMMENT '用户等级',
  `createTime` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '购物车信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cart_info
-- ----------------------------

-- ----------------------------
-- Table structure for comment_info
-- ----------------------------
DROP TABLE IF EXISTS `comment_info`;
CREATE TABLE `comment_info`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `content` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '评价内容',
  `goodsId` bigint(10) NOT NULL DEFAULT 0 COMMENT '所属商品',
  `userId` bigint(10) NOT NULL DEFAULT 0 COMMENT '评价人id',
  `level` int(10) NULL DEFAULT NULL COMMENT '用户等级',
  `createTime` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品评价表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment_info
-- ----------------------------
INSERT INTO `comment_info` VALUES (1, '国产之光牛逼！！！', 1, 1, 1, '2023-08-16 14:37:13');

-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `description` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '商品描述',
  `price` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '商品价格',
  `discount` double(10, 2) NULL DEFAULT 1.00 COMMENT '商品折扣',
  `sales` int(10) NOT NULL DEFAULT 0 COMMENT '商品销量',
  `hot` int(10) NOT NULL DEFAULT 0 COMMENT '商品点赞数',
  `recommend` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '否' COMMENT '是否是推荐',
  `count` int(10) NOT NULL DEFAULT 0 COMMENT '商品库存',
  `typeId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属类别',
  `fileIds` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品图片id，用英文逗号隔开',
  `userId` bigint(10) NOT NULL DEFAULT 0 COMMENT '评价人id',
  `level` int(10) NULL DEFAULT NULL COMMENT '用户等级',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品编号',
  `factorys` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生产厂家',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生产日期',
  `xinghao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '型号',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品详情表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_info
-- ----------------------------
INSERT INTO `goods_info` VALUES (1, '华为p10', '这是华为p10', 1000.00, 1.00, 30, 256, '是', 200, 1, '[12]', 1, 1, '111', '111', '2023-08-16 14:52:15', '111', '上架');
INSERT INTO `goods_info` VALUES (2, '可比克350克', '这是可比克350克', 20.00, 1.00, 10, 8, '是', 200, 2, '[13]', 1, 1, '222', '222', '2023-08-16 14:52:22', '222', '上架');
INSERT INTO `goods_info` VALUES (3, '阿玛尼最新款', '这是阿玛尼最新款', 200.00, 1.00, 21, 8, '是', 199, 3, '[14]', 1, 1, NULL, NULL, NULL, NULL, '上架');
INSERT INTO `goods_info` VALUES (4, '拯救者笔记本', '这是拯救者笔记本', 2000.00, 1.00, 0, 0, '是', 100, 1, '[15]', 1, 1, NULL, NULL, NULL, NULL, '上架');
INSERT INTO `goods_info` VALUES (5, '辣条', '这是辣条', 2.00, 1.00, 0, 0, '是', 100, 2, '[16]', 1, 1, NULL, NULL, NULL, NULL, '上架');

-- ----------------------------
-- Table structure for nx_system_file_info
-- ----------------------------
DROP TABLE IF EXISTS `nx_system_file_info`;
CREATE TABLE `nx_system_file_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `originName` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '原始文件名',
  `fileName` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '存储文件名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '文件信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nx_system_file_info
-- ----------------------------
INSERT INTO `nx_system_file_info` VALUES (12, '手机.jpg', '手机1692167759803.jpg');
INSERT INTO `nx_system_file_info` VALUES (13, '可比克.jpg', '可比克1692167774413.jpg');
INSERT INTO `nx_system_file_info` VALUES (14, '阿玛尼.jpg', '阿玛尼1692167783235.jpg');
INSERT INTO `nx_system_file_info` VALUES (15, '拯救者.jpg', '拯救者1692167796076.jpg');
INSERT INTO `nx_system_file_info` VALUES (16, '辣条.jpg', '辣条1692167805441.jpg');

-- ----------------------------
-- Table structure for order_goods_rel
-- ----------------------------
DROP TABLE IF EXISTS `order_goods_rel`;
CREATE TABLE `order_goods_rel`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `orderId` bigint(20) NULL DEFAULT NULL COMMENT '订单ID',
  `goodsId` bigint(10) NOT NULL DEFAULT 0 COMMENT '所属商品',
  `count` int(11) NULL DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单商品关系映射表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_goods_rel
-- ----------------------------
INSERT INTO `order_goods_rel` VALUES (1, 1, 1, 30);
INSERT INTO `order_goods_rel` VALUES (2, 2, 2, 10);
INSERT INTO `order_goods_rel` VALUES (3, 3, 3, 20);
INSERT INTO `order_goods_rel` VALUES (4, 4, 3, 1);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `orderId` bigint(20) NULL DEFAULT NULL COMMENT '订单ID',
  `totalPrice` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '总价格',
  `userId` bigint(10) NOT NULL DEFAULT 0 COMMENT '所属用户',
  `level` int(10) NULL DEFAULT NULL COMMENT '用户等级',
  `linkAddress` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系地址',
  `linkPhone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系电话',
  `linkMan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系人',
  `createTime` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  `status` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '未发货' COMMENT '订单状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品订单信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES (1, 111111, 480.00, 1, 1, '安徽省合肥市高新区', '18812337865', 'admin', '2023-08-16 10:39:22', '完成');
INSERT INTO `order_info` VALUES (2, 222222, 160.00, 2, 2, '上海市浦东新区', '18812337865', '张三', '2023-08-16 10:39:22', '完成');
INSERT INTO `order_info` VALUES (3, 333333, 320.00, 3, 3, '上海市长宁区', '18812337865', '李四', '2023-08-16 10:39:22', '完成');
INSERT INTO `order_info` VALUES (4, 12023081611161502, 16.00, 1, 3, '上海市', '18843232356', '老张', '2023-08-16 11:16:45', '待发货');

-- ----------------------------
-- Table structure for type_info
-- ----------------------------
DROP TABLE IF EXISTS `type_info`;
CREATE TABLE `type_info`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型名称',
  `description` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '类型描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品类别表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of type_info
-- ----------------------------
INSERT INTO `type_info` VALUES (1, '电子产品', '这是电子产品');
INSERT INTO `type_info` VALUES (2, '零食', '这是零食');
INSERT INTO `type_info` VALUES (3, '化妆品', '这是化妆品');

-- ----------------------------
-- Table structure for user2_info
-- ----------------------------
DROP TABLE IF EXISTS `user2_info`;
CREATE TABLE `user2_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickName` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(10) NULL DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  `phone` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `email` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `cardId` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证',
  `account` double(10, 2) NULL DEFAULT NULL COMMENT '余额',
  `level` int(10) NOT NULL DEFAULT 2 COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户2信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user2_info
-- ----------------------------
INSERT INTO `user2_info` VALUES (1, '张天志', 'e10adc3949ba59abbe56e057f20f883e', '老张', '男', 22, '2023-08-16 10:39:22', '18843232356', '上海市', 'aa@163.com', '342425199001116372', 0.00, 2);
INSERT INTO `user2_info` VALUES (2, '赵千里', 'e10adc3949ba59abbe56e057f20f883e', '老赵', '男', 23, '2023-08-16 10:39:22', '18843232356', '北京市', 'bb@163.com', '342425199001116376', 0.00, 2);
INSERT INTO `user2_info` VALUES (3, '钱优优', 'e10adc3949ba59abbe56e057f20f883e', '老钱', '女', 32, '2023-08-16 10:39:22', '18843232356', '合肥市', 'cc@163.com', '342425199001116323', 0.00, 2);
INSERT INTO `user2_info` VALUES (4, '贾宏鑫', 'e10adc3949ba59abbe56e057f20f883e', '老贾', '女', 24, '2023-08-16 10:39:22', '18843232356', '北京市', 'hahaha@126.com', '342425199001116837', 0.00, 2);
INSERT INTO `user2_info` VALUES (5, '夏其林', 'e10adc3949ba59abbe56e057f20f883e', '老夏', '男', 25, '2023-08-16 10:39:22', '18843232356', '合肥市', 'hello@126.com', '342425199001116309', 0.00, 2);
INSERT INTO `user2_info` VALUES (6, '倪标生', 'e10adc3949ba59abbe56e057f20f883e', '老倪', '男', 26, '2023-08-16 10:39:22', '18843232356', '北京市', '1212@qq.com', '342425199001116984', 0.00, 2);
INSERT INTO `user2_info` VALUES (7, '孙晓哈', 'e10adc3949ba59abbe56e057f20f883e', '老孙', '男', 21, '2023-08-16 10:39:22', '18843232356', '合肥市', '8765@qq.com', '342425199001116303', 0.00, 2);
INSERT INTO `user2_info` VALUES (8, '李锐', 'e10adc3949ba59abbe56e057f20f883e', '老李', '男', 31, '2023-08-16 10:39:22', '18843232356', '北京市', '9080@qq.com', '342425199001116910', 0.00, 2);
INSERT INTO `user2_info` VALUES (9, '吴腊苏', 'e10adc3949ba59abbe56e057f20f883e', '老吴', '男', 34, '2023-08-16 10:39:22', '18843232356', '合肥市', 'shjs@126.com', '342425199001116345', 0.00, 2);
INSERT INTO `user2_info` VALUES (10, '潘晓章', 'e10adc3949ba59abbe56e057f20f883e', '老潘', '女', 33, '2023-08-16 10:39:22', '18843232356', '深圳市', '666@qq.com', '342425199001116234', 0.00, 2);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickName` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(10) NULL DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  `phone` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `email` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `jibie` varchar(175) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户级别',
  `account` double(10, 2) NULL DEFAULT 0.00 COMMENT '余额',
  `level` int(10) NOT NULL DEFAULT 3 COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '张天志', 'e10adc3949ba59abbe56e057f20f883e', '老张', '男', 22, '2023-08-16 10:39:22', '18843232356', '上海市', 'aa@163.com', '银牌客户', 984.00, 3);
INSERT INTO `user_info` VALUES (2, '赵千里', 'e10adc3949ba59abbe56e057f20f883e', '老赵', '男', 23, '2023-08-16 10:39:22', '18843232356', '北京市', 'bb@163.com', NULL, 0.00, 3);
INSERT INTO `user_info` VALUES (3, '钱优优', 'e10adc3949ba59abbe56e057f20f883e', '老钱', '女', 32, '2023-08-16 10:39:22', '18843232356', '合肥市', 'cc@163.com', NULL, 0.00, 3);
INSERT INTO `user_info` VALUES (4, '贾宏鑫', 'e10adc3949ba59abbe56e057f20f883e', '老贾', '女', 24, '2023-08-16 10:39:22', '18843232356', '北京市', 'hahaha@126.com', NULL, 0.00, 3);
INSERT INTO `user_info` VALUES (5, '夏其林', 'e10adc3949ba59abbe56e057f20f883e', '老夏', '男', 25, '2023-08-16 10:39:22', '18843232356', '合肥市', 'hello@126.com', NULL, 0.00, 3);
INSERT INTO `user_info` VALUES (6, '倪标生', 'e10adc3949ba59abbe56e057f20f883e', '老倪', '男', 26, '2023-08-16 10:39:22', '18843232356', '北京市', '1212@qq.com', NULL, 0.00, 3);
INSERT INTO `user_info` VALUES (7, '孙晓哈', 'e10adc3949ba59abbe56e057f20f883e', '老孙', '男', 21, '2023-08-16 10:39:22', '18843232356', '合肥市', '8765@qq.com', NULL, 0.00, 3);
INSERT INTO `user_info` VALUES (8, '李锐', 'e10adc3949ba59abbe56e057f20f883e', '老李', '男', 31, '2023-08-16 10:39:22', '18843232356', '北京市', '9080@qq.com', NULL, 0.00, 3);
INSERT INTO `user_info` VALUES (9, '吴腊苏', 'e10adc3949ba59abbe56e057f20f883e', '老吴', '男', 34, '2023-08-16 10:39:22', '18843232356', '合肥市', 'shjs@126.com', NULL, 0.00, 3);
INSERT INTO `user_info` VALUES (10, '潘晓章', 'e10adc3949ba59abbe56e057f20f883e', '老潘', '女', 33, '2023-08-16 10:39:22', '18843232356', '深圳市', '666@qq.com', NULL, 0.00, 3);

SET FOREIGN_KEY_CHECKS = 1;
