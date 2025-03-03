**JAVA和Smali数据类型对比**

| smali | java |
|:------:|:------:|
|  V   | void |
|  Z   | boolean |
|  B   | byte |
|  S   | short |
|  C   | char |
|  I   | int |
|  J   | long |
|  F   | float |
|  D   | double |
|  L   | 对象 |
|  [   | 数组 |

**语法**

| smali | meaning |
|------|------|
|.field |　定义变量 |
|.method　|　方法 |
|.parameter　|　方法参数 |
|.prologue　|　方法开始 |
|.line 12　|　此方法位于第12行 |
|const  　|　表示该变量为 32 位 |
|const-wide  |　该变量为 64 位 |
|const/high16  v0, 0x7fo3　|　把0x7fo3赋值给v0 |
|return-void　|　函数返回void |
|.end method　|　函数结束 |
|new-instance　|　创建实例 |
|iput-object　|　对象赋值 |
|iget-object　|　调用对象 |
|invoke-static　|　调用静态函数 |
|invoke-super　|　调用父函数 |
|invoke-direct　|　调用private函数 |
|invoke-virtual　|　调用protected或public函数 |
|throw vAA　|　抛出vAA寄存器中指定类型的异常　|
|array-length v1,v0　|　获取v0数组的长度且将值赋给v1　|
|new-array v0,v0,[I　|　构造Int类型，大小是v0的数组，并将值赋给v0寄存器　|
|move-result vx |　将上一个方法的结果赋值给vx【基本数据类型】|
|move-result-wide vx　|　将上一个方法调用的 long/double 结果值移动到vx，vx + 1中　|
|move vx,vy |　将vy的内容移动到vx。两个寄存器必须位于第一个256寄存器范围内　|
|cmpl-double vx,vy,vz　|　比较两个双精度浮点数。如果vy小于vz，则vx结果为1，相等则结果为0，大于的话结果为-1　|
|cmpg-double vx, vy, vz　|　比较两个双精度浮点数。如果vy大于vz，则vx结果为1，相等则结果为0，小于的话结果为-1　|
|cmp-long v0,v2,v3　|　比较v2和v3，如果v2>v3，v0=1；反之，v0=-1；相等，v0=0　|


**smali跳转语句**

```
“if-eq vA, vB, :cond_**” 如果vA等于vB则跳转到:cond_**

“if-ne vA, vB, :cond_**” 如果vA不等于vB则跳转到:cond_**

“if-lt vA, vB, :cond_**” 如果vA小于vB则跳转到:cond_**

“if-ge vA, vB, :cond_**” 如果vA大于等于vB则跳转到:cond_**

“if-gt vA, vB, :cond_**” 如果vA大于vB则跳转到:cond_**

“if-le vA, vB, :cond_**” 如果vA小于等于vB则跳转到:cond_**

“if-eqz vA, :cond_**” 如果vA等于0则跳转到:cond_**

“if-nez vA, :cond_**” 如果vA不等于0则跳转到:cond_**

“if-ltz vA, :cond_**” 如果vA小于0则跳转到:cond_**

“if-gez vA, :cond_**” 如果vA大于等于0则跳转到:cond_**

“if-gtz vA, :cond_**” 如果vA大于0则跳转到:cond_**

“if-lez vA, :cond_**” 如果vA小于等于0则跳转到:cond_**
```

**更多资料**

[smali纯英语手册pdf版](docs/smali_dalvik_opcodes.pdf)

http://blog.csdn.net/lostinai/article/details/48975661

http://blog.csdn.net/sjim_/article/details/50443860

https://blog.csdn.net/jimmy5z/article/details/12119739



