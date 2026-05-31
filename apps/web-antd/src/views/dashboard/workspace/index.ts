export interface PoemItem {
  title: string;
  author: string;
  content: string;
  dynasty?: string;
  date?: string;
  type?: 'poem' | 'sentence';
}

export interface QuoteItem {
  content: string;
}

export interface ProjectItem {
  color?: string;
  group: string;
  date: string;
  content: string;
  icon: string;
  title: string;
  url?: string;
}

export interface QuickNavItem {
  color?: string;
  icon: string;
  title: string;
  url?: string;
}

export interface TodoItem {
  completed: boolean;
  content: string;
  date: string;
  title: string;
}

export const quotes: QuoteItem[] = [
  { content: '海内存知己，天涯若比邻。——王勃' },
  { content: '会当凌绝顶，一览众山小。——杜甫' },
  { content: '天生我材必有用，千金散尽还复来。——李白' },
  { content: '人生得意须尽欢，莫使金樽空对月。——李白' },
  { content: '俱怀逸兴壮思飞，欲上青天览明月。——李白' },
  { content: '乘风好去，长空万里，直下看山河。——辛弃疾' },
  { content: '我见青山多妩媚，料青山见我应如是。——辛弃疾' },
  { content: '青山一道同云雨，明月何曾是两乡。——王昌龄' },
  { content: '两岸猿声啼不住，轻舟已过万重山。——李白' },
  { content: '孤帆远影碧空尽，唯见长江天际流。——李白' },
  { content: '今人不见古时月，今月曾经照古人。——李白' },
  { content: '俱往矣，数风流人物，还看今朝。——毛泽东' },
  { content: '雄关漫道真如铁，而今迈步从头越。——毛泽东' },
  { content: '暮色苍茫看劲松，乱云飞渡仍从容。——毛泽东' },
  { content: '少年辛苦终身事，莫向光阴惰寸功。——杜荀鹤' },
  { content: '纸上得来终觉浅，绝知此事要躬行。——陆游' },
  { content: '山重水复疑无路，柳暗花明又一村。——陆游' },
  { content: '千磨万击还坚劲，任尔东西南北风。——郑燮' },
  { content: '不畏浮云遮望眼，自缘身在最高层。——王安石' },
  { content: '春风得意马蹄疾，一日看尽长安花。——孟郊' },
  { content: '莫愁前路无知己，天下谁人不识君。——高适' },
  { content: '曾经沧海难为水，除却巫山不是云。——元稹' },
  { content: '身无彩凤双飞翼，心有灵犀一点通。——李商隐' },
  { content: '沧海月明珠有泪，蓝田日暖玉生烟。——李商隐' },
  { content: '锦瑟无端五十弦，一弦一柱思华年。——李商隐' },
  { content: '人生若只如初见，何事秋风悲画扇。——纳兰性德' },
  { content: '等闲变却故人心，却道故人心易变。——纳兰性德' },
  { content: '一别两宽，各生欢喜。' },
  { content: '且将新火试新茶，诗酒趁年华。——苏轼' },
  { content: '竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。——苏轼' },
  { content: '回首向来萧瑟处，归去，也无风雨也无晴。——苏轼' },
  { content: '宠辱不惊，闲看庭前花开花落。' },
  { content: '去留无意，漫随天外云卷云舒。' },
  { content: '万事尽心尽力，而后顺其自然。' },
  { content: '知不足而奋进，望远山而前行。' },
  { content: '追风赶月莫停留，平芜尽处是春山。' },
  { content: '且视他人之疑目如盏盏鬼火，大胆去走你的夜路。' },
  { content: '少年没有乌托邦，心向远方自明朗。' },
  {
    content:
      '世界上只有一种真正的英雄主义，那就是认清生活的真相后依然热爱生活。',
  },
  { content: '纵有千古，横有八荒；前途似海，来日方长。' },
  { content: '心之所向，素履以往；生如逆旅，一苇以航。' },
  { content: '凡是过去，皆为序章。' },
  { content: '月色与雪色之间，你是第三种绝色。' },
  { content: '若逢新雪初霁，满月当空。' },
  { content: '从前的日色变得慢，车、马、邮件都慢，一生只够爱一人。' },
  { content: '所谓无底深渊，下去，也是前程万里。' },
  { content: '岁月不饶人，我亦未曾饶过岁月。' },
  { content: '我觉得这件事不该停在那，因为雪不该下在沙地上。' },
  { content: '一个能够升起月亮的身体，必然驮住了无数次日落。——余秀华' },
  { content: '吹灭读书灯，一身都是月。——黄永玉' },
  { content: '我们听过无数的道理，却仍旧过不好这一生。——韩寒' },
  { content: '愿你走出半生，归来仍觉人间值得。' },
  { content: '你来人间一趟，你要看看太阳。' },
  { content: '黑夜一无所有，为何给我安慰。——海子' },
  { content: '每一个不曾起舞的日子，都是对生命的辜负。——尼采' },
  { content: '当华美的叶片落尽，生命的脉络才历历可见。——聂鲁达' },
  { content: '愿中国青年都摆脱冷气，只是向上走。' },
  { content: '其实地上本没有路，走的人多了，也便成了路。' },
  { content: '猛兽总是独行，牛羊才成群结队。' },
  { content: '且停且忘且随风，且行且看且从容。' },
  { content: '山高自有客行路，水深自有渡船人。' },
  { content: '少年驰骋的风，比黄金更昂贵。' },
  { content: '慢品人间烟火色，闲观万事岁月长。' },
  { content: '知世故而不世故，历圆滑而留天真。' },
  { content: '清醒、知趣、明得失、知进退。' },
  { content: '万念俱灰之时 请再次震动那颗不服输的心脏。' },
];

export const poems: PoemItem[] = [
  {
    title: '将进酒',
    author: '李白',
    content:
      '君不见黄河之水天上来，奔流到海不复回。\n君不见高堂明镜悲白发，朝如青丝暮成雪。\n人生得意须尽欢，莫使金樽空对月。\n天生我材必有用，千金散尽还复来。',
    dynasty: '唐',
    date: '约天宝年间',
    type: 'poem',
  },
  {
    title: '静夜思',
    author: '李白',
    content: '床前明月光，疑是地上霜。\n举头望明月，低头思故乡。',
    dynasty: '唐',
    date: '开元十四年（726年）',
    type: 'poem',
  },
  {
    title: '望庐山瀑布',
    author: '李白',
    content:
      '日照香炉生紫烟，遥看瀑布挂前川。\n飞流直下三千尺，疑是银河落九天。',
    dynasty: '唐',
    date: '开元十四年（726年）',
    type: 'poem',
  },
  {
    title: '水调歌头',
    author: '苏轼',
    content:
      '明月几时有？把酒问青天。\n不知天上宫阙，今夕是何年。\n我欲乘风归去，又恐琼楼玉宇，高处不胜寒。\n起舞弄清影，何似在人间。',
    dynasty: '宋',
    date: '熙宁九年（1076年）中秋',
    type: 'poem',
  },
  {
    title: '定风波',
    author: '苏轼',
    content:
      '莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。\n料峭春风吹酒醒，微冷，山头斜照却相迎。\n回首向来萧瑟处，归去，也无风雨也无晴。',
    dynasty: '宋',
    date: '元丰五年（1082年）春',
    type: 'poem',
  },
  {
    title: '念奴娇·赤壁怀古',
    author: '苏轼',
    content:
      '大江东去，浪淘尽，千古风流人物。\n故垒西边，人道是，三国周郎赤壁。\n乱石穿空，惊涛拍岸，卷起千堆雪。\n江山如画，一时多少豪杰。',
    dynasty: '宋',
    date: '元丰五年（1082年）七月',
    type: 'poem',
  },
  {
    title: '沁园春·雪',
    author: '毛泽东',
    content:
      '北国风光，千里冰封，万里雪飘。\n望长城内外，惟余莽莽；\n大河上下，顿失滔滔。\n山舞银蛇，原驰蜡象，欲与天公试比高。',
    dynasty: '现代',
    date: '1936年2月',
    type: 'poem',
  },
  {
    title: '满江红',
    author: '岳飞',
    content:
      '怒发冲冠，凭栏处、潇潇雨歇。\n抬望眼，仰天长啸，壮怀激烈。\n三十功名尘与土，八千里路云和月。\n莫等闲、白了少年头，空悲切！',
    dynasty: '宋',
    date: '约绍兴三年（1133年）',
    type: 'poem',
  },
  {
    title: '虞美人',
    author: '李煜',
    content:
      '春花秋月何时了？往事知多少。\n小楼昨夜又东风，故国不堪回首月明中。\n雕栏玉砌应犹在，只是朱颜改。\n问君能有几多愁？恰似一江春水向东流。',
    dynasty: '南唐',
    date: '开宝八年（975年）亡国后',
    type: 'poem',
  },
  {
    title: '青玉案·元夕',
    author: '辛弃疾',
    content:
      '东风夜放花千树，更吹落、星如雨。\n宝马雕车香满路。\n凤箫声动，玉壶光转，一夜鱼龙舞。\n众里寻他千百度，蓦然回首，\n那人却在，灯火阑珊处。',
    dynasty: '宋',
    date: '约淳熙元年（1174年）',
    type: 'poem',
  },
  {
    title: '宣州谢朓楼饯别校书叔云',
    author: '李白',
    content:
      '弃我去者，昨日之日不可留；\n乱我心者，今日之日多烦忧。\n长风万里送秋雁，对此可以酣高楼。\n蓬莱文章建安骨，中间小谢又清发。\n俱怀逸兴壮思飞，欲上青天览明月。\n抽刀断水水更流，举杯消愁愁更愁。\n人生在世不称意，明朝散发弄扁舟。',
    dynasty: '唐',
    date: '约天宝十二载（753年）',
    type: 'poem',
  },
  {
    title: '《随感录四十一》',
    author: '鲁迅',
    content:
      '愿中国青年都摆脱冷气，只是向上走，不必听自暴自弃者流的话。能做事的做事，能发声的发声。有一分热，发一分光，就令萤火一般，也可以在黑暗里发一点光，不必等候炬火。',
    date: '1918年',
    dynasty: '近代',
    type: 'sentence',
  },
  {
    title: '名人传·米开朗琪罗传',
    author: '罗曼·罗兰',
    content:
      '我恨那怯懦的理想主义，它只教人不去注视人生的苦难和心灵的弱点。我们当和太容易被梦想与甘言所欺骗的民众说：英雄的谎言只是懦怯的表现。世界上只有一种英雄主义：便是注视世界的真面目——并且爱世界。',
    dynasty: '法国',
    type: 'sentence',
    date: '1903年—1906年',
  },
  {
    title: '从前慢',
    author: '木心',
    content:
      '记得早先少年时，大家诚诚恳恳，说一句，是一句。' +
      '清早上火车站，长街黑暗无行人，卖豆浆的小店冒着热气。' +
      '\n' +
      '从前的日色变得慢，车，马，邮件都慢，一生只够爱一个人。' +
      '\n' +
      '从前的锁也好看，钥匙精美有样子，你锁，人家就懂了',
    dynasty: '当代',
    type: 'sentence',
    date: '收录于《云雀叫了一整天》（2009年）',
  },
  {
    title: '三行情诗（其一）',
    author: '佚名',
    content:
      '螃蟹在剥我的壳，笔记本在写我；' +
      '\n' +
      '漫天的我落在枫叶上雪花上，' +
      '\n' +
      '而你在想我。',
    dynasty: '当代',
    type: 'sentence',
    date: '不详',
  },
  {
    title: '行文至此',
    author: '佚名',
    content:
      '我在很平常的一天放弃了一个很重要的人，虽然有点舍不得，但我的满心欢喜该告一段落了。或许那天本不平常，一切都是我安排的。\n' +
      '\n' +
      '其实我很早就知道我们不合适也没有开始过，不过是我们在一起玩从而在别人嘴里出现了流言与蜚语。这些对你产生了影响与困扰，对我们的关系产生了质疑。\n' +
      '\n' +
      '不过能同你走完一段没有结果的路，虽时间不长，但也毕生难忘，也为那短暂的春天添了浓墨一笔。\n' +
      '\n' +
      '就像我坐在湖边，以为是在海边，我吹着湖边的风，以为那是海风，我喜欢你，以为你也喜欢我。但湖是湖，海是海。\n' +
      '\n' +
      '那些流言的风，不断吹拂本就无波的岸。可岸，虽未挽留过风，风也是会停的，蜚语也会过去的。\n' +
      '\n' +
      '我的意思是，慢慢释怀，我们都没有错，过去也不是负担，那浓墨的一笔仍然充满色彩，春天也依旧炽热。你我也当像鸟一样飞往属于自己的山。\n',
    dynasty: '当代',
    type: 'sentence',
    date: '2026年5月',
  },
  {
    title: '你是我的遗物',
    author: '张嘉佳',
    content:
      '长大' +
      '\n' +
      '要和无数个自己告别' +
      '\n' +
      '我们会一次次失去自己' +
      '\n' +
      '又一次次成为自己' +
      '\n' +
      '\n' +
      '写给所有灿烂的人生' +
      '\n' +
      '我们下次再见',
    dynasty: '当代',
    type: 'sentence',
    date: '2026年5月',
  },
];

export const projectItems: ProjectItem[] = [
  {
    color: '#6DB33F',
    group: 'jdk21、vue3、若依框架',
    date: '2025-02-28',
    content: '在线云图库，团队管理图片、AI生图、退片推荐等',
    icon: 'simple-icons:imagetoolbox',
    title: 'LZ-Picture',
    url: 'https://github.com/SpringSunYY/LZ-Picture',
  },
  {
    color: '#409EFF',
    group: 'jdk21、springBoot3、芋道框架',
    date: '2026-03-23',
    content: '开发国际化、租户管理、代码生成及项目优化等',
    icon: 'ep:element-plus',
    title: 'LZ-litchi',
    url: 'https://github.com/SpringSunYY/LZ-litchi',
  },
  {
    color: '#ff4d4f',
    group: 'vue3、vben Admin、芋道框架',
    date: '2026-03-23',
    content: '开发国际化、租户管理、代码生成及项目优化等',
    icon: 'icon-park-outline:mall-bag',
    title: 'LZ-litchi-ui-admin-vben',
    url: 'https://github.com/SpringSunYY/LZ-litchi-ui-admin-vben',
  },
  {
    color: '#1890ff',
    content: '基于若依优化代码生成、MP、导入导出等',
    date: '2024-02-24',
    group: 'jdk21、springBoot3、vue3、vue2',
    icon: 'simple-icons:github',
    title: 'LZ-RuoYi',
    url: 'https://github.com/SpringSunYY/LZ-RuoYi',
  },
  {
    color: '#e18525',
    content: 'github.com/litchicode/litchi-ui-admin-vben',
    date: '2025-11-09',
    group: 'python、falsk、vue2',
    icon: 'simple-icons:python',
    title: 'RuoYi_vue_flask',
    url: 'https://github.com/SpringSunYY/RuoYi_vue_flask',
  },
  {
    color: '#2979ff',
    content: '生成uniapp代码，若依框架手机端',
    date: '2024-09-07',
    group: 'Vue3 + uniapp 管理手机端',
    icon: 'ant-design:mobile',
    title: 'LZ-RuoYi-App',
    url: 'https://github.com/SpringSunYY/LZ-RuoYi-App',
  },
];

export const quickNavItems: QuickNavItem[] = [
  {
    color: '#1fdaca',
    icon: 'ion:home-outline',
    title: '首页',
    url: '/',
  },
  {
    color: '#ff6b6b',
    icon: 'ep:shop',
    title: '商城中心',
    url: '/mall',
  },
  {
    color: '#7c3aed',
    icon: 'tabler:ai',
    title: 'AI 大模型',
    url: '/ai/chat',
  },
  {
    color: '#3fb27f',
    icon: 'simple-icons:erpnext',
    title: 'ERP 系统',
    url: '/erp/backlog',
  },
  {
    color: '#4daf1bc9',
    icon: 'simple-icons:civicrm',
    title: 'CRM 系统',
    url: '/crm',
  },
  {
    color: '#1a73e8',
    icon: 'tabler:pointer-collaboration-2',
    title: 'BPM 工作流',
    url: '/bpm/task/my',
  },
];

export const todoItems: TodoItem[] = [
  {
    completed: false,
    content: `系统支持 JDK 8/17/21，Vue 2/3`,
    date: '2024-07-15 09:30:00',
    title: '技术兼容性',
  },
  {
    completed: false,
    content: `后端提供 Spring Boot 2.7/3.2 + Cloud 双架构`,
    date: '2024-08-30 14:20:00',
    title: '架构灵活性',
  },
  {
    completed: false,
    content: `全部开源，个人与企业可 100% 直接使用，无需授权`,
    date: '2024-07-25 16:45:00',
    title: '开源免授权',
  },
  {
    completed: false,
    content: `国内使用最广泛的快速开发平台，远超 10w+ 企业使用`,
    date: '2024-07-10 11:15:00',
    title: '广泛企业认可',
  },
];
