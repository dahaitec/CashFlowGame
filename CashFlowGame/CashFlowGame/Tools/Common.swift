//
//  Common.swift
//  test
//
//  Created by Sheng Zhao Huang on 2019/9/8.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import UIKit


let kStatusBarH : CGFloat = 20
let kNavigationBarH : CGFloat = 44

/// 状态栏高度
let kStatusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
/// 导航栏高度
let kNavBarHeight: CGFloat = 44.0
/// 状态栏+导航栏的高度
let kStatusAndNavBarHeight: CGFloat = (kStatusBarHeight + kNavBarHeight)
/// 底部菜单栏高度
let kTabBarHeight: CGFloat = (UIApplication.shared.statusBarFrame.size.height > 20.0 ? 83.0:49.0)


let kScreenW = UIScreen.main.bounds.width
let kScreenH = UIScreen.main.bounds.height

//MARK: - 个人偏好设置
let defaults = UserDefaults.standard
let ToZiContents = ["投资成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "不要把鸡蛋放在一个篮子里。",
                    "负债不会给你带来财富，反而它在很大程度上增加了你的风险，而且与我们的思想截然不同的是，富人一般不会让自己负债累累。",
                    "致富的秘诀就是将你存完以后剩下的钱花掉，而不是将你花完以后剩下的钱存上。",
                    "珍惜每一元钱，视为可再生钱的种子。",
                    "如果说急速赚钱是百米冲刺，那么理财就是马拉松比的是耐力，需要的是有计划、耐心和原则性。",
                    "你不理财，财不理你!",
                    "你的今天取决于你昨天的决策，你的明天取决于你今天的决策。",
                    "不买奢侈的酒，因为酒迷们都知道对酒最高的享受其实可以在便宜的酒单上找到。",
                    "积极储蓄、更好的投资、更灵活的消费、就能赚到更多的钱。",
                    "钱是四脚的，人是两脚的。钱找人容易，人找钱困难。",
                    "李嘉诚:有资金而没有知识，越拼搏，失败的可能越高。有知识而没有资金，小小的付出都能有回报。",
                    "富人买入资产，穷人只有支出，中产阶级买入他们以为是资产的负债。",
                    "资产就是能把钱放进你口袋里的东西，而负债就是把钱从你口袋取走的东西。",
                    "要供贷款的房子、车子、奢侈品，都是负债。相反存款、债券、保险这些能增值的东西才是真正的资产。",
                    "吃不穷，穿不穷，不会理财就受穷!",
                    "大多数人高估了他们在一年内能做的事情，而低估了他们在十年里能做的事情，绝不以临时方案解决长期问题。",
                    "健康投资是最佳的首选：投资项目生命是人生的根基，而健康是生命的基本保证和追求人生理想的前提条件，是最大的财富。",
                    "嬴得健康才能嬴得生命，赢得生命才能嬴得时间，时间就是金钱。",
                    "投资理财的最佳顾问是你自己：不要盲从别人，不要迷信专家。因为行家的分析未必都是对的。",
                    "要靠自己的耳朵去听正确的消息，靠自己的眼睛去看实际的情况，用自己的大脑去分析与判断，寻找最佳的投资方案和途径。",
                    "关键不是你能够挣到多少钱，而是你能留下多少钱，你能让钱怎样努力地为你工作，这就是理财。",
                    "你必须在两者之间选择：你想拥有一部造钱机，还是将自己变成造钱机。",
                    "金钱的满足是没有止境的，而生命对每个人来说又是有限的。因此，赚钱要适度，要有满足感。",
                    "人生需要规划，财富需要打理。理财规划不是有钱人的专属权利。",
                    "投资没有常胜将军：市场经济瞬息万变，投资也有不测风云。要想掌握投资诀窍，难免需付点学费。",
                    "钱是身外之物，当发现决策错误，要舍得割肉，有时暂时的放弃是为了更多的收获。",
                    "金钱在于运动：金钱的本质在于流动，钱是不能休眠的。",
                    "穷爸爸说：“稳定的工作就是一切!富爸爸说：“不断的学习才是一切。",
                    "财商就是让你有更多的选择，找到发现机会的方法或者改变局面来做自己喜欢的事情。",
                    "风险无处不在，要学会驾驭风险，别总想回避风险。",
                    "大多数人没有意识到在生活中，不在于你挣了多少钱，而在于你留住了多少钱。",
                    "如果你想发财，就需要学习财务知识。",
                    "富人获得资产，而穷人和中产阶级获得债务。只不过他们以为那些就是资产。",
                    "资产，就是能把钱放进你口袋的东西。",
                    "负债，就是把钱不断从你口袋中取走的东西。",
                    "大多数人认为太冒险的投资，实际并无多大风险，只是因为你缺乏某些财务知识而不知道究竟该怎样看待这些投资机会。",
                    "财富，就是支持一个人生存多长时间的能力，或者说如果我今天停止工作，我还能活多久。",
                    "对成年人来说，把支出维持在低水平，减少借款和勤劳的工作会帮你打下一个稳固的资产基础。",
                    "公司是富人最大的秘密，但是只有当你的确愿意拥有自己的公司时，你再照我的建议去做，否则继续上班同时关注自己的事业。",
                    "公司并不一定是一个真正的实体，公司可以是一些复合法律要求的文件，在政府注册后就被放进了律师的办公室里。",
                    "我正不断的把工资投资于资产项，而用资产项为我生产出来的钱购买我想要的东西。",
                    "你拥有的任何一项合法资产，你都可以考虑找出以企业形式拥有同等资产时所能享受到更多的好处和保护。",
                    "金钱从来不是真正的资产，我们唯一的，真正的资产是我们的头脑。",
                    "最重要的专门技能是销售和懂得市场营销。而交际能力，如书面表达，口头表达及谈判能力对于一个人的成功是非常重要的。",
                    "我的资产项目比政府重要的多，如果我也学会先支付自己，我就会在财务上更加强壮。",
                    "在投资方面，大部分人选择的是直接投资于某种项目，而不是首先投资于学习自己所要投资项目的有关知识。",
                    "明智的投资者必定不光看到投资回报率，而且还要看到一旦收回投资，你因此所拥有的资产就如同白得。",
                    "一桩交易要获得盈利，一是廉价，二是有变化。",
                    "明智的投资者往往购买一项不太流行的投资，他们懂得盈利是在购买时已经获得，而不是在出售时获得的。",
                    "他受过教育的父亲鼓励他成为聪明人，而他富有的父亲则鼓励他雇佣聪明人。",
                    "最大的损失是机会损失。",
                    "穷人在为钱而工作，富人让钱为他们工作。",
                    "富人买入资产，穷人只有支出。",
                    "穷爸爸说：“顺着公司的梯子，一步步往上爬。”富爸爸问：“为什么不当梯子的主人？",
                    "人类其实就是再犯错误的过程中学习的。穷爸爸说：“稳定的工作就是一切！”富爸爸说：“不断的学习才是一切！”",
                    "工人付出最高限度的努力工作以避免被解雇，而雇主提供最低限度的工资以防止工人辞职。",
                    "给自己一个强有力的理由或目标，若非如此，你在生活中会感到步履维艰。",
                    "有的人之所以贫穷是因为他们有着不良的用钱习惯。",
                    "是否缺乏自律是将富人，穷人区分开来的首要因素。那些缺乏内在坚毅的人往往会成为自律性很强的人的牺牲品。",
                    "致富并不以牺牲舒适的生活为代价的支付账单，这就是财商。",
                    "经济头脑是在解决我们经济问题的过程中锻炼出来的。",
                    "学校的问题是经常把你变成你所学专业的人员。",
                    "变成你所学专业的人员的可怕后果在于太多的人因此而忘了去关注自己的事业，他们耗费一生去关注别人的事业并使他人致富。",
                    "对于大多数投资者而言，重要的不是他到底知道什么，而是他们是否真正明白自己到底不知道什么。",
                    "穷爸爸努力存钱，富爸爸不断投资。",
                    "我们之所以取得目前的成就，是因为我们关心的是寻找那些我们可以跨越的一英尺障碍，而不是去拥有什么能飞越七英尺的能力。",
                    "不犯大错：投资人并不需要做对很多事情，重要的是要能不犯重大的过错。",
                    "对一个优秀的企业来说，时间是朋友，但是对于一个平庸的企业，时间就是敌人。",
                    "按兵不动：有时成功的投资需要按兵不动。",
                    "价值投资不能保证我们盈利，但价值投资给我们提供了走向真正成功的唯一机会。",
                    "如果你无法左右局面，那么错失一次机会也不是什么坏事。",
                    "在你能力所及的范围内投资。关键不是范围的大小，而是正确认识自己。",
                    "恐惧和贪婪：要在别人贪婪的时候恐惧，而在别人恐惧的时候贪婪。",
                    "人们买股票后根据第二天早上价格的涨跌，决定他们的投资是否正确，简直是扯淡。",
                    "与好人为伍：一位所有者或投资者，如果尽量把他自己和那些管理着好业务的经理人结合在一起，也能成就伟业。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "当你资金短缺时，去承受外在的压力而不要动用你的储蓄或投资，利用这种压力来激发你的财务天赋，想出新办法来得到更多的钱，然后再支付账单。",
                    "投资人必须谨记，你正确地投资一家简单易懂而竞争力持续的企业所得到的回报，与你辛苦地分析一家变量不断、复杂难懂的企业可以说是不相上下。",
                    "对大多数从事投资的人来讲，重要的不是知道多少，而是怎么正确地对待自己不明白的东西。只要投资者避免犯错误，他/她没必要做太多事情。",
                    "许多人在苦苦工作，苦苦挣扎，其原因就是因为他们依然固执与陈旧的观念。他们没有意识到已有的某种思想或方法在昨天还是一种资产，但今天却已经变成了负债。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。",
                    "巴菲特: 成功的秘诀有三条: 1、尽量避免风险,保证本金。 2、尽量避免风险,保证本金。 3、坚决牢记第一第二条。"]

//MARK: - 个人数据
// 现金
var xianjinValue      = defaults.float(forKey: "xianjin")
// 存款
var cunkuanValue      = defaults.float(forKey: "cunkuan")

// 现金流
var xianjinliuValue   = defaults.float(forKey: "xianjinliu")
// 健康
var jiankangValue     = defaults.integer(forKey: "jiankang")
// 心情
var xinqingValue      = defaults.integer(forKey: "xinqing")
// 知名度
var mingshengValue    = defaults.integer(forKey: "mingsheng")
// 信用
var xinyongValue      = defaults.integer(forKey: "xinyong")

//创业公司数组
var chuangyeGouMaiArray = defaults.array(forKey: "chuangyeGouMaiArrayS")as! [String]

