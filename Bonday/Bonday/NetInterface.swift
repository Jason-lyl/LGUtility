//
//  NetInterface.swift
//  Bonday
//
//  Created by bonday012 on 2017/5/22.
//  Copyright © 2017年 bonday012. All rights reserved.
//

import UIKit

class NetInterface: NSObject {

}
let KBonDay =  "http://116.226.110.68:7088/api/"//测试服请求头
//正常图
func KimageCaiJian(nuber:Int) -> String {
    return "@700w_\(nuber)h_1e_1c"
}

let KBondayItunes = "https://itunes.apple.com/cn/app/bang-daibon-day/id985243639?mt=8" //itunes url
let ceshiimage = "images/1461299859000d482b07a-1bd3-48af-909d-1b5eb429e8e8.png"//测试图片
let KimageUrl = "https://image.bonday.cn/"//图片请求头
//let KimageUrl = "https://bonday.oss-cn-hangzhou.aliyuncs.com"
let KAdvertiseUrl = "ADs/newest" //广告

//男生默认头像
let ManHeadImage1 = "images/1469010098000231c6dab-5e5b-4581-9f77-5582037fea01.png"
let ManHeadImage2 = "images/1469087090000bdcfde2c-00de-49f8-8c14-f1ec3858f68d.png"
let ManHeadImage3 = "images/1469087148000d19a975a-f22a-4921-9036-cc0eb8f15add.png"
let ManHeadImage4 = "images/146908723900055e95272-e4d3-4ddf-9d4e-e4e43d90651d.png"
let ManHeadImage5 = "images/146908726900088adbf24-2f68-4deb-8eec-db3032300501.png"

//女生默认头像
let WomanHeadImage1 = "images/146900968200091a6dee4-5de0-4cea-9523-8ca941e1ed6e.png"
let WomanHeadImage2 = "images/14690869050003593abdf-db4b-4359-81c4-f66b960d4043.png"
let WomanHeadImage3 = "images/146908711800064972d45-909c-4639-bdcd-78e073192218.png"
let WomanHeadImage4 = "images/1469087190000bffc531b-3642-48f1-9d6f-ba31a53fd92f.png"
let WomanHeadImage5 = "images/14690873110006f3c7c9a-ee3b-4303-b826-9be924c65d88.png"
//裁剪
let KimageCaiJian = "= 700w_%dh_1e_1c"//正常图
//let kImageCaiJianSuffix = ""
let KHeadImageCaiJian = "= 300w_300h_1e_1c"//头像

//本地存储名字
let KTwoEqualVersion     = "equalVersion"
let KLocalHidePayment    = "hidePayment"
let KLocalCurrentVersion = "currentVersion"

//热门

//客服咨询

let KLessonChat_support  = "users/lesson/support?entityId=%= "  //获取空闲的客服信息
let KLessonChat_courseMessage = "rong/publishMessage/custom" //发送自定义的课程信息
let KLessonChat_sendMessage   = "rong/publishMessage" //单聊接口

//问卷

let KQuestionnaire_commit = "questionnaires" //提交问卷信息
let KQuestionnaire_exists = "questionnaires/exists" //查询是否填写过问卷

//棒呆营
let kBondayCamp_livingListWithpage = "videos/bondayCamp/living/%= ?size=12&page=%d"
let kBondayCamp_recordingListWithPage  = "videos/bondayCamp/%= ?size=12&page=%d"
let kBondayCamp_livingList        = "videos/bondayCamp/living/%= "
let kBondayCamp_recordingList     = "videos/bondayCamp/%= "
let kBondayCamp_goodsList         = "goodss/page?tagType=lesson_permission"
let kBondayCamp_permission_plan   = "lesson_permission_plan"    //棒呆营规划权限
let kBondayCamp_permission_apply  = "lesson_permission_apply"   //棒呆营申请权限
let kBondayCamp_permission_normal = "lesson_permission_normal" //棒呆营权限
let kBondayCamp_campOrders        = "campOrders" //棒呆营预约
let kBondayCamp_campScore         = "campExams/score"//得分情况

//棒呆开课
let KHot_OpenCourse_latest = "videos/page?page=1&size=4&code=media_type_adviser"//最新课程
let KUser_info = "users/question_paper" //表单信息
let KChapters = "chapters/page?videoId=%= " //章节列表
let KChapter_detail = "chapters/%= " //章节详情
let KRecord_playRecords = "playRecords" //录播课程已看的信息
let KHot_OpenCourse_list = "video_lessons/video_lesson_type/tag"//分类
let KHot_OpenCourse_latest_detail = "videos/page?code=media_type_adviser&size=20"
let KHot_OpenCourse_latest_detail1 = "videos/page?code=%= &size=20"
let KHot_OpenCourse_latest_detail_oneTwoOne = "videos/page?canOne2One=true&code=media_type_adviser&size=20"
let KHot_OpenCourse_videoInfo = "https://app.bonday.cn/m/m-video-info.html?id=%= "
let KHot_OpenCourse_teacherInfo = "https://app.bonday.cn/m/m-video-info.html?id=%= &type=1"
let KHot_OpenCourse_howgoClass = "https://app.bonday.cn/m/m-howtoclass.html"
let KHot_OpenCourse_signUp = "video_lessons/page?eid=%= "
let KOpenCource_orderList = "orders/page?page=%ld&size=12" //获取订单列表
let KRecord_GetVideoLink = "chapters/%= /videoLink" //获取视屏的链接
let KOpenCource_orderList_recordVideoLesson = "orders/page/recordVideoLesson?page=%ld&size=12"//获取录播课程
let KOpenCource_orderPay = "orders/payment" //订单支付
let KOpenCource_courceDetail  = "videos/%= " //课程详情
let KOpenCource_courceLesson = "video_lessons/page?eid=%= "// 课程安排
let KOpenCource_coupon = "coupons/%= /exchange" //兑换优惠券
let KOpenCource_myCoupon = "coupons/mine?page=%ld&size=12" //我的优惠券列表
let KOpenCourse_canUseCoupon = "coupons/mine?goodsId=%= &type=2"
let KOpenCource_cancelCource = "orders/%= /cancel" //取消订单
let KHot_OpenCourse_newLessons = "goodss/lesson/periods" //课程预告
//找活动
let KHot_Activity_banner = "banners/page?page=1&size=5"//轮播

let KHot_Activity_lastprograms = "common/lastprograms"//最新活动
let KHot_Activity_lastprograms_list = "programs/page?size=12&page=%ld"//最新活动列表

let KHot_Activity_category = "codes/category/all"//活动种类
let KHot_Activity_category_list = "programs/page?code=%= &page=%ld&size=12"//活动种类列表

let KHot_Activity_hotaddress = "common/hotaddress/page"//活动城市
let KHot_Activity_hotaddress_domestic = "codes/city_list?address_code=address_111&positive=true"//国内
let kHot_Activity_hotaddress_abroad = "codes/city_list?address_code=address_111&positive=false"//国外

let KHot_Activity_hotaddress_list = "programs/page?code=%= &size=12&page=%ld"//活动城市列表
let KHot_Activity_consultations = "consultations/page?oid=%= &size=12&page=%ld"//申请相关

let KHot_Activity_homehot = "common/homehot"//活动精选
let KHot_Activity_homehot_list = "common/ranking/projects/suggestion"//活动精选列表
let KHot_Activity_homehot_list_detail = "programs/page/project/%= ?page=%ld&size=12"//活动热榜详情
let KHot_Activity_detail = "programs/%= "//活动详情
let KHot_Activity_organizers = "organizers/%= "//主办方详情
let KHot_organizers_detail = "https://app.bonday.cn/m/organizer.html?id=%= " //主办方详情h5
let kHot_Activity_webview = "https://app.bonday.cn/m/activity-mobile.html?id=%= "

//音乐堂
let KHot_Music_meida_type = "codes/media_type/all"//视频种类
let kHot_Music_meida_type_list = "videos/page?code=%= &size=12&page=%ld"//视频种类列表
let kHot_Music_schools = "schools/page/withoutStudent?withStudents=true&size=16&page=%ld"//名校视屏
let kHot_Music_schools_list = "schools/%= /schoolStudentMedia"//名校视频列表

let kHot_Music_star_anchor = "users/page?code=user_star_anchor&page=1&size=4"//明星主播
let kHot_Music_star_anchor_list = "users/page?code=user_star_anchor"//明星主播列表
let kHot_Music_star_anchor_author = "videos/page/author/%= "//主播视频主页

let kHot_Music_star_anchor_list1 = "schools/page?size=5&page=%ld&withStudents=true"//明星主播列表的学校分类schools/all

let kHot_Music_videos = "videos/page?size=6&sortKey=layout&sortKey2create_date"//最新视频
let kHot_Music_videos_list = "videos/page?sortKey=layout&sortKey2create_date&size=12&page=%ld"//最新视频列表
let kHot_Music_media_type_bonday = "videos/page?size=4&code=media_type_bonday"//棒呆出品
let kHot_Music_media_type_bonday_list = "videos/page?code=media_type_bonday&size=12&page=%ld"//棒呆出品列表

let kHot_Videos = "videos/%= "//视频详情
let kHot_Videos_other = "videos/%= "//视频详情其他
let kHot_Videos_page = "/comments/page?size=12&page=%ld"//视频评论的列表
let kHot_Videos_add_comments = "videos/%= /comments" //添加一条评论
let kHot_Videos_comments = "comments/page?oid=56e68b1d0cf2ae40978c2d7a&size=12&page=%ld"//视频评论
let kHot_Music_mainVideos = "videos/list/mainVideos/%= "//相关视频
let kHot_Music_videos_author = "videos/page/author/%= "//主播视频

//搜索借口
let kHot_Search_all = "search/hotKeyWords/all"
let kHot_Search_type = "search/type/"
let kAnswer_search = "posts/search?keywords=%= &page=%ld&size=12" //问答搜索

//随心问
let KQuestion_cofe = "gifts/page?eid=%= "//咖啡
let KQuestion = "users/page?code=user_ama&sortKey=position&size=12&page=%ld"
let KQuestion_Detail = "users/%= /info" //详情
let KQuestion_List = "posts/page?targetUid=%= &sortKey=position&sortKey2=create_date&isDESC2=true&size=12&page=%ld"//列表
let KQuestion_Question_Detail = "comments/page?oid=%= &page=%ld&size=12"

//活动
let KActivity_grade = "codes/user_grade_type/all" //获取年级信息
let KActivity_filter = "programs/filter?page=%ld&size=12" //筛选条件

//申请
let KApply_SchoolDetail = "schools/%= " //申请学校的信息
let KApply_TreasureBook = "codes/%= /all" //申请宝典
let KApply_LastQuestion = "posts/page?code=post_category_applying&page=1&size=1" //最新的咨询
let KApply_ThreeArticles = "articles/page?code=article_bang&page=1&size=3&level=" //获取三篇文章
let KApply_GetClass = "users/grade"    //获取年级
let KApply_treasure_article  = "articles/page?code=%= &size=12&page=%ld"        //申请宝典文章
let KApply_programs = "programs/page?schoolId=%= " //夏校
let KApply_grade = "users/grade" //获取用户成绩

//问答列表
let kAnswerGetPayPrice = "posts/postOrderPrice"
let kAnswerPayCanUseCoupon = "coupons/mine?useType=1&type=2"
let kAnswerPayMyQuestion = "posts/payment" //支付提问
let kAnswerMyLastestQuestion = "posts/page?uids=%= &role=owner&page=1&size=1" //获取自己最新提问的问题
let kAnswerMyAllQuestion = "posts/page?uids=%= &role=owner&page=%ld&size=12" //获取自己所有的问题
let KAnswer_questionPayed = "posts/postOrder/page?payStatus=1&type=9&role=owner&uids=%= &page=%ld&size=12"//已付费问题
let KAnswer = "posts/page?code=%= &page=%ld&size=12"
let KAnswer_limitTimeFree = "posts/page?code=post_question&free=1&page=1&size=4"//限时免费
let KDeleteComments = "comments/%= " //删除评论
let KAskQuestion = "posts/postadd/v2" //提问
let KPutImage = "oss/upload/signature/v2"
//问答详情
let kAnswerDetail = "posts/%= "
//回复列表
let kAnswerComment = "comments/page?oid=%= &sortKey=layout&sortKey2=create_date&page=%ld&size=12"
//回复
let KComment = "posts/%= /comment"
//点击问答标签
let KAnswerTag = "posts/page?code=post_question&customTag=%= &size=12&page=%ld"

//频道
let Kchannel_Share = "posts/page?code=post_dynamics&page=%ld&size=12"//分享列表
let Kchannel_SendShare_Image = "posts/postadd/v2" //发布分享带图片 post
let Kchannel_getLatestPosts = "posts/newest" //获取最新的分享
let Kchannel_getLatestTopic = "articles/newest/article_topic" //获取最新的话题
let Kchannel_getLatestReading = "articles/newest/article_bang" //获取最新的文章
let Kchannel_Share_Comment = "comments/page?oid=%= &page=%ld&size=12" //回复列表
let Kchannel_article_webView = "https://app.bonday.cn/m/article-single.html?id=%= &from=app" //文章详情
let Kchannel_code_webView = "https://app.bonday.cn/m/article-single.html?code=%= &from=app" //申请时间
let Kchannel_Share_attention = "users/%= /%= /%= " //关注用户
let Kchannel_HotTopic = "articles/page?code=article_topic"//棒呆话题
let Kchannel_Topic_comments = "comments/page?oid=%= &page=%ld&size=12"
let Kchannel_Reading = "articles/page?code=%= &page=%ld&size=12&level="//阅读小组
let Kchannel_Reading_query = "articles/books/query_items" //筛选条件列表

let Kchannel_reading_select = "articles/page?code=%= &level=%= &page=%ld&size=12" //分类筛选

let Kchannel_Applying = "articles/page?code=article_applying&page=%ld&size=12"//留学申请

let Kchannel_Activity = "articles/page?code=article_activity"//活动知多少

let Kchannel_Brian_Special = "articles/page?code=article_special&page=%ld&size=12"//Brian个人专栏

let Kchannel_Campus = "articles/page?code=article_campus&page=%ld&size=12"//美国校园文化冷知识
let Kchannel_Detail = "articles/%= "    //详情：阅读小组，留学申请，活动知多少，，创始人，冷知识

//我的
let KMine_info = "users/%= /info"
let Kmine_getCheckNum = "tools/v2/sms/verificationCode?sign=%= &dt=%ld" //获取验证码
let Kmine_checkGotNum = "tools/v2/sms/check?sign=%= &dt=%ld" //验证验证码
let Kmine_checkPhoneReistered = "users/%= /exist" //验证手机是否已注册
let Kmine_totalUnreadCount = "sysMessages/unread/count" //总的未读消息数量
let Kmine_unreadCount = "sysMessages/%d/typeCount" //未读消息数量
let Kmine_readMessage = "sysMessages/%= /readed" //读取消息
let Kmine_getRCIMToken = "rong/getToken" //获得融云token
let Kmine_joinRCIMChat = "rong/joinGroup" //加入聊天室
let Kmine_forgetPassword = "users/restpass" //忘记密码
let Kmine_verificationCode = "users/signin/phone" //验证码登录
let Kmine_registerPhone = "users/signup" //注册手机号
let Kmine_login = "users/signin" //登陆
let Kmine_hasPhone = "users/mobilebind/check" //检查用户是否已绑定手机号
let Kmine_bindPhone = "users/bindMobile/" //绑定手机号
let Kmine_checkOpenID = "users/%= /check" //判断是否已绑定 openID
let Kmine_guanzhu_person = "posts/page?role=owner&code=post_dynamics&uids=%= &page=%ld&size=12"//关注二级页面
let Kmine_dynamics = "posts/page?role=owner&code=post_dynamics&uids=%= &page=%ld&size=12"//动态
let Kmine_fans = "users/page?uids=%= &role=fan&page=%ld&size=12"
let kmine_news = "sysMessages/page?etype=%= &page=%ld&size=12"
let kmine_news_huifu = "1"
let kmine_news_tongzhi = "2"

//内购
let KIAP_productsList = "orders/ios/products" //获取商品列表
let KIAP_ordersSync = "orders/sync"    //同步信息
let KIAP_getLessonPoint = "orders/%= /lessonPoint" //获取游客的课点
let KIAP_checkPayment = "orders/ios/payment/verify" //验证支付订单
let KIAP_payment = "orders/ios/payment" //支付订单
