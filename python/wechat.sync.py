#!/usr/bin/env python3
"""简单地在两个微信群中同步消息
"""
import wxpy

wechat = wxpy.Bot()

groups = wechat.groups()

G1 = wxpy.ensure_one(groups.search("生物信息学群"))
G2 = wxpy.ensure_one(groups.search("生物信息学2群"))
F_groups = [G1, G2]

@wechat.register(F_groups, except_self = False)
def sync_my_groups(msg):
	wxpy.sync_message_in_groups(msg, F_groups)

wxpy.embed(banner = "堵塞微信，直至手动结束")
