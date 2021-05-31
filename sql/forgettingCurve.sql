use eladmin;

create table if not exists jo_task_config
(
    jtc_id         bigint           not null auto_increment comment '任务主键id',
    jtc_user_id    bigint unsigned  not null comment '用户id',
    jtc_tag_id     bigint unsigned  not null comment '标签id',
    jtc_cycle_type tinyint unsigned not null default '2' comment '任务周期类型 1-一次性任务，2-里程碑任务，3-记忆曲线任务',
    jtc_task_name  varchar(50)      not null comment '任务名称',
    jtc_difficulty tinyint unsigned not null default '2' comment '任务难度 1-婴儿模式 2-人间模式 3-地狱模式',
    create_time    datetime         not null comment '创建时间',
    update_time    datetime         not null comment '修改时间',
    primary key (jtc_id),
    key idx_user_task (jtc_user_id, jtc_task_name)
) engine = innodb
  charset = utf8mb4 comment ='任务配置表';

create table if not exists jo_task_tag
(
    jtt_id        bigint           not null auto_increment comment '标签主键id',
    jtt_tag_name  varchar(20)      not null comment '标签名字',
    jtt_tag_level tinyint unsigned not null default '1' comment '标签等级，默认为1最大',
    create_time   datetime         not null comment '创建时间',
    update_time   datetime         not null comment '修改时间',
    primary key (jtt_id),
    key idx (jtt_tag_name)
) engine = innodb
  charset = utf8mb4 comment ='任务标签表';

create table if not exists jo_task_flow
(
    jtf_id          bigint           not null auto_increment comment '任务流水主键id',
    jtf_task_id     bigint           not null comment '任务id',
    jtf_user_id     bigint           not null comment '用户id',
    jtf_tag_id      bigint           not null comment '标签id',
    jtf_cur_id      bigint comment '记忆曲线id',
    jtf_task_name   varchar(50)      not null comment '任务名称',
    jtf_cycle_type  tinyint unsigned not null default '2' comment '任务周期类型 1-一次性任务，2-里程碑任务，3-记忆曲线任务',
    jtf_difficulty  tinyint unsigned not null default '2' comment '任务难度 1-婴儿模式 2-人间模式 3-地狱模式',
    jtf_task_status tinyint unsigned not null default '1' comment '任务完成状态 1-进行中 2-已完成',
    jtf_tag_name    varchar(20)      not null comment '标签名称',
    create_time     datetime         not null comment '创建时间',
    update_time     datetime         not null comment '修改时间',
    primary key (jtf_id),
    key idx_user (jtf_user_id, jtf_task_name, update_time)
) engine = innodb
  charset = utf8mb4 comment ='任务流水表';

# TBD-O 这块再思索下要不要做记录366位的记忆曲线的签到信息进去，还是说直接放到redis的bitMap中，搭配流水表进行处理
create table if not exists jo_curve_flow
(
    jcf_id           bigint           not null auto_increment comment '记忆曲线主键id',
    jcf_task_id      bigint           not null comment '任务id',
    jcf_task_name    varchar(50)      not null comment '任务名称',
    jcf_user_id      bigint           not null comment '用户id',
    jcf_curve_map    char(366)        not null comment '记忆曲线map，0为未完成，1为完成',
    jcf_curve_status tinyint unsigned not null default '1' comment '1-开始遗忘 2-反复遗忘 3-聊熟于心',
    create_time      datetime         not null comment '创建时间',
    update_time      datetime         not null comment '修改时间',
    primary key (jcf_id),
    key idx_user (jcf_user_id, jcf_curve_map, update_time)
) engine = innodb
  charset = utf8mb4 comment ='记忆曲线流水表';
