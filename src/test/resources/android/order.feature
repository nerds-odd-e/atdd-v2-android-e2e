# language: zh-CN
@ui-login
功能: 订单

  场景: 订单列表
    假如存在如下订单:
      | code  | productName | total | recipientName | status        |
      | SN001 | 衬衫          | 19.99 | 张三            | toBeDelivered |
    当查询订单时
    那么显示如下订单
      | SN001 | 衬衫 | ￥19.99 | 待发货 |

