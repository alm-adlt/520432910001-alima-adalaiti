
## 第四次作业--文本视觉化

### 视觉化规则定义

对英文字母进行分类：
| group1     | group2 | group3     | group4     |
| :---        |    :----:   |    :----:   |          ---: |
|a|i|o|e|
|b|g|y|z|
|h|j|l|p|
|b|g|y|z|
|d|f|k|c|
|w|x|n|r|
|u|t|s|m|
|q|v|||

按照分组对文本内的字母计数，每一组对应不同类型及色系的基本样式，某个字母的一次出现可以带来不同的图案。多字母文本可呈现叠加后的复杂图案。

### 实现步骤
将文本格式进行整合，便于接下来统计字母
```
String whole="black mirror and yellow moon";

String []poems=splitTokens(whole,". ,?!");

```
根据出现的字母进行分组计数
```
void charCount (String[] s){
  for(int i=0;i<s.length;i++){
    for(int j=0;j<s[i].length();j++){
      //sorting and counting letters
    if((s[i].charAt(j)=='a')||(s[i].charAt(j)=='b')||(s[i].charAt(j)=='h')||(s[i].charAt(j)=='d')||(s[i].charAt(j)=='w')||s[i].charAt(j)=='u'||s[i].charAt(j)=='q'){
      g1=g1+1; }
    else if(s[i].charAt(j)=='i'||s[i].charAt(j)=='g'||s[i].charAt(j)=='j'||s[i].charAt(j)=='f'||s[i].charAt(j)=='x'||s[i].charAt(j)=='t'||s[i].charAt(j)=='v'){
      g2=g2+1; }
    else if(s[i].charAt(j)=='o'||s[i].charAt(j)=='y'||s[i].charAt(j)=='l'||s[i].charAt(j)=='k'||s[i].charAt(j)=='n'||s[i].charAt(j)=='s'){
      g3=g3+1; }
    else if(s[i].charAt(j)=='e'||s[i].charAt(j)=='z'||s[i].charAt(j)=='p'||s[i].charAt(j)=='c'||s[i].charAt(j)=='r'||s[i].charAt(j)=='m'){
      g4=g4+1; }

}
}
}

```

对于每一组字母对应花纹分别定义函数（共有四组），函数包含每种花纹基本单位的大小、颜色，重复次数，旋转角度等参数，一次代表一种花纹，最终所有花纹将重合在一起，形成复杂的新花纹

group1:基本型为橘色系圆形
```
void Graphic1(int a){
  for(int i=0;i<a;i++){
    int dis=int(random(width/5,width/2));
    int n=int(random(4,50));
    float ang= TWO_PI/n;
    smooth();
    strokeJoin(ROUND);
    stroke(colors1[int(random(0,3))],random(10,50));
    strokeWeight(random(0,15));
    float d=random(10,width/2);
    fill(0,0,0,0);
    for(int j=0;j<n;j++){
    ellipse(width/2+dis*cos(ang*j),height/2+dis*sin(ang*j),d,d);
    } 
  }
}
```

group2:基本型为黄色系矩形
```
void Graphic2(int a){
  for(int i=0;i<a;i++){
    int dis=int(random(width/5,width/2));
    int n=int(random(4,50));
    float ang= TWO_PI/n;
    smooth();
    strokeJoin(ROUND);
    stroke(colors2[int(random(0,3))],random(10,40));
    strokeWeight(random(0,15));
    float d=random(10,width/2);
    fill(0,0,0,0);
    for(int j=0;j<n;j++){
    rectMode(CENTER);
    rect(width/2+dis*cos(ang*j),height/2+dis*sin(ang*j),d,d);
    } 
  }
}
```
group3：基本型为红色系点
```
void Graphic3(int a){
  for(int i=0;i<a;i++){
    int n=int(random(5,100));
    int dis=int(random(0,width/3));
    float ang= TWO_PI/n;
    smooth();
    strokeJoin(ROUND);
    stroke(colors3[int(random(0,3))],random(10,60));
    strokeWeight(random(0,15));
    float d=random(10,width/5);
    fill(0,0,0,0);
    for(int j=0;j<n;j++){
    point(width/2+dis*cos(ang*j),height/2+dis*sin(ang*j));
   
    } 
  }
}
```
group4：基本型为蓝色系矩形
```
void Graphic4(int a){
  for(int i=0;i<a;i++){
    int dis=int(random(width/5,width/2));
    int n=int(random(5,100));
    float ang= TWO_PI/n;
    smooth();
    strokeJoin(ROUND);
    stroke(colors4[int(random(0,3))],random(10,50));
    strokeWeight(random(0,15));
    float d=random(10,width/2);
    fill(0,0,0,0);
    for(int j=0;j<n;j++){
    rectMode(CENTER);
    rect(width/2+dis*cos(ang*j),height/2+dis*sin(ang*j),d/2,d+2);
    } 
  }
}
```




### 案例视图

案例1：**“black mirror and yellow moon”**

![](https://github.com/alm-adlt/homework/blob/main/homework3-visualization/eg1.jpg)

案例2：**“a red red rose.”**

![](https://github.com/alm-adlt/homework/blob/main/homework3-visualization/eg3.jpg)
