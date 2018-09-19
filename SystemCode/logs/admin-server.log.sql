2018-09-19 09:55:11,780 [http-nio-9090-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-09-19 09:55:11,790 [http-nio-9090-exec-3] ==> Parameters: wensisi(String)
2018-09-19 09:55:11,847 [http-nio-9090-exec-3] <==      Total: 1
2018-09-19 09:55:11,861 [http-nio-9090-exec-3] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2018-09-19 09:55:11,864 [http-nio-9090-exec-3] ==> Parameters: 4(Long)
2018-09-19 09:55:12,413 [http-nio-9090-exec-3] <==      Total: 16
2018-09-19 09:55:12,697 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2018-09-19 09:55:12,705 [taskExecutor-1] ==> Parameters: 4(Long), 登陆(String), true(Boolean), null
2018-09-19 09:55:12,810 [taskExecutor-1] <==    Updates: 1
2018-09-19 09:55:13,526 [http-nio-9090-exec-5] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2018-09-19 09:55:13,529 [http-nio-9090-exec-5] ==> Parameters: 4(Long)
2018-09-19 09:55:13,578 [http-nio-9090-exec-5] <==      Total: 1
2018-09-19 09:55:16,146 [http-nio-9090-exec-5] ==>  Preparing: select count(1) from exec_product t 
2018-09-19 09:55:16,148 [http-nio-9090-exec-5] ==> Parameters: 
2018-09-19 09:55:16,332 [http-nio-9090-exec-5] <==      Total: 1
2018-09-19 09:55:16,335 [http-nio-9090-exec-5] ==>  Preparing: select * from exec_product t order by id asc limit ?, ? 
2018-09-19 09:55:16,339 [http-nio-9090-exec-5] ==> Parameters: 0(Integer), 10(Integer)
2018-09-19 09:55:16,508 [http-nio-9090-exec-5] <==      Total: 10
2018-09-19 09:55:23,764 [http-nio-9090-exec-3] ==>  Preparing: select count(1) from exec_product t 
2018-09-19 09:55:23,765 [http-nio-9090-exec-3] ==> Parameters: 
2018-09-19 09:55:23,832 [http-nio-9090-exec-3] <==      Total: 1
2018-09-19 09:55:23,834 [http-nio-9090-exec-3] ==>  Preparing: select * from exec_product t order by id asc limit ?, ? 
2018-09-19 09:55:23,835 [http-nio-9090-exec-3] ==> Parameters: 0(Integer), 10(Integer)
2018-09-19 09:55:23,938 [http-nio-9090-exec-3] <==      Total: 10
2018-09-19 09:55:25,236 [http-nio-9090-exec-6] ==>  Preparing: select count(1) from exec_product t 
2018-09-19 09:55:25,237 [http-nio-9090-exec-6] ==> Parameters: 
2018-09-19 09:55:25,376 [http-nio-9090-exec-6] <==      Total: 1
2018-09-19 09:55:25,378 [http-nio-9090-exec-6] ==>  Preparing: select * from exec_product t order by id asc limit ?, ? 
2018-09-19 09:55:25,378 [http-nio-9090-exec-6] ==> Parameters: 10(Integer), 10(Integer)
2018-09-19 09:55:25,458 [http-nio-9090-exec-6] <==      Total: 8
2018-09-19 09:55:29,898 [http-nio-9090-exec-3] ==>  Preparing: select * from exec_product t where t.id = ? 
2018-09-19 09:55:29,902 [http-nio-9090-exec-3] ==> Parameters: 15(Long)
2018-09-19 09:55:29,957 [http-nio-9090-exec-3] <==      Total: 1
2018-09-19 09:55:46,586 [http-nio-9090-exec-1] ==>  Preparing: update exec_product t SET productCode = ?, productName = ?, productDesc = ?, productTypeId = ?, productPrice = ?, productPicPath = ?, kindCode = ?, rootKindCode = ?, productUrl = ?, srcCode = ?, productSource = ?, company = ?, belongAlbum = ?, ext1 = ?, ext2 = ? where t.id = ? 
2018-09-19 09:55:46,588 [http-nio-9090-exec-1] ==> Parameters: 23243434(String), 9月19日修改(String), 水电费水电费是的(String), 3(BigDecimal), 222(BigDecimal), (String), (String), (String), (String), (String), (String), (String), (String), (String), (String), null
2018-09-19 09:55:46,679 [http-nio-9090-exec-1] <==    Updates: 0
2018-09-19 09:55:48,322 [http-nio-9090-exec-10] ==>  Preparing: select count(1) from exec_product t 
2018-09-19 09:55:48,323 [http-nio-9090-exec-10] ==> Parameters: 
2018-09-19 09:55:48,442 [http-nio-9090-exec-10] <==      Total: 1
2018-09-19 09:55:48,443 [http-nio-9090-exec-10] ==>  Preparing: select * from exec_product t order by id asc limit ?, ? 
2018-09-19 09:55:48,444 [http-nio-9090-exec-10] ==> Parameters: 0(Integer), 10(Integer)
2018-09-19 09:55:48,541 [http-nio-9090-exec-10] <==      Total: 10
