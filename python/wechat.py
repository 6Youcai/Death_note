# windows tested
# encoding: UTF-8
from wxpy import *
import codecs

bot = Bot()

my_friends = bot.friends()

f = codecs.open('result.txt', 'w', 'utf-8')

print(my_friends.stats_text(), file = f)

def gender_zh(gender):
    return "男" if gender == 1 else "女"

print("\t".join(["wechatID", "name", "remark_name", "gender", "province", "city", "signature"]), file = f)
for friend in my_friends:
    print(friend.wxid, friend.name, friend.remark_name, gender_zh(friend.sex), \
    friend.province, friend.city, friend.signature.replace("\n", "# "), file = f)

# group
groups = bot.groups()

def group_detail(group):
    are_friends = {True:0, False:0}
    members = group.members
    for people in members:
        are_friends[people.is_friend] += 1
    print("\t".join([group.name, str(len(members)), group.owner.name, \
    str(are_friends[True]), str(are_friends[False]) ]), file = f)

print("".join(["\ngroup_name", "group members", "group owners", "are_my_friends", "not_my_friend"]), file = f)
for g in groups:
    group_detail(g)

# 
public_number = bot.mps()
print("\nyou are focus on %d public numbers, they are: " %(len(public_number)), file = f)
for public in public_number:
    print("".join([public.name, public.signature, public.city]), file = f)
f.close()
