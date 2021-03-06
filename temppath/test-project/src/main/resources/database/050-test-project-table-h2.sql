SET REFERENTIAL_INTEGRITY FALSE;

DROP TABLE IF EXISTS AUTH_ACCOUNT;
CREATE TABLE AUTH_ACCOUNT (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    LOGIN_EMAIL VARCHAR(80) NOT NULL , 
    LOGIN_PASSWD VARCHAR(100) NOT NULL , 
    STATUS VARCHAR(1) NOT NULL , 
    TYPE VARCHAR(50) NOT NULL , 
    USER_ID VARCHAR(40)  , 
    LAST_LOGIN DATETIME NOT NULL , 
    LOGIN_TRY_TIMES INT NOT NULL , 
    DESCRIPTION VARCHAR(200)  , 
    UPDATE_TIME DATETIME NOT NULL , 
    CREATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS AUTH_ORGANIZATION;
CREATE TABLE AUTH_ORGANIZATION (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    NAME VARCHAR(100) NOT NULL , 
    PARENT_ID VARCHAR(40)  , 
    ROOT_ID VARCHAR(40)  , 
    CODE VARCHAR(40) NOT NULL , 
    IS_USE_ROOT_MENU VARCHAR(1) NOT NULL , 
    TYPE1 VARCHAR(40) NOT NULL , 
    TYPE2 VARCHAR(40) NOT NULL , 
    DESCRIPTION VARCHAR(200)  , 
    UPDATE_TIME DATETIME NOT NULL , 
    CREATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS AUTH_RESOURCE;
CREATE TABLE AUTH_RESOURCE (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    NAME VARCHAR(100) NOT NULL , 
    CODE VARCHAR(200) NOT NULL , 
    STATUS VARCHAR(1) NOT NULL , 
    TYPE1 VARCHAR(40) NOT NULL , 
    TYPE2 VARCHAR(40) NOT NULL , 
    DESCRIPTION VARCHAR(200)  , 
    UPDATE_TIME DATETIME NOT NULL , 
    CREATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS AUTH_USER;
CREATE TABLE AUTH_USER (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    NAME VARCHAR(100) NOT NULL , 
    STATUS VARCHAR(1) NOT NULL , 
    TYPE VARCHAR(50) NOT NULL , 
    TEL VARCHAR(40) NOT NULL , 
    EMAIL VARCHAR(80) NOT NULL , 
    SEX VARCHAR(1) NOT NULL , 
    BIRTHDAY DATETIME  , 
    FAMILY_ADDR VARCHAR(200)  , 
    WORK_ADDR VARCHAR(200)  , 
    WORK_TEL VARCHAR(40)  , 
    DESCRIPTION VARCHAR(200)  , 
    UPDATE_TIME DATETIME NOT NULL , 
    CREATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS AUTH_AUTHER_ROLE;
CREATE TABLE AUTH_AUTHER_ROLE (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    AUTHER_ID VARCHAR(40) NOT NULL , 
    ROLE_ID VARCHAR(40) NOT NULL , 
    TYPE VARCHAR(40) NOT NULL , 
    CREATE_TIME DATETIME NOT NULL , 
    UPDATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS AUTH_ROLE;
CREATE TABLE AUTH_ROLE (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    NAME VARCHAR(100) NOT NULL , 
    CODE VARCHAR(40) NOT NULL , 
    TYPE1 VARCHAR(40) NOT NULL , 
    TYPE2 VARCHAR(40) NOT NULL , 
    STATUS VARCHAR(1) NOT NULL , 
    DESCRIPTION VARCHAR(200)  , 
    UPDATE_TIME DATETIME NOT NULL , 
    CREATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS AUTH_MENU;
CREATE TABLE AUTH_MENU (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    NAME VARCHAR(100) NOT NULL , 
    RESOURCE_ID VARCHAR(40) NOT NULL , 
    TYPE1 VARCHAR(40) NOT NULL , 
    TYPE2 VARCHAR(40) NOT NULL , 
    PARENT_ID VARCHAR(40)  , 
    ROOT_ID VARCHAR(40)  , 
    MENU_INDEX INT  , 
    MAX_LEVEL INT  , 
    ICO VARCHAR(50)  , 
    DESCRIPTION VARCHAR(200)  , 
    UPDATE_TIME DATETIME NOT NULL , 
    CREATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS AUTH_ORGANIZATION_USER;
CREATE TABLE AUTH_ORGANIZATION_USER (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    USER_ID VARCHAR(40) NOT NULL , 
    ORGANIZATION_ID VARCHAR(40) NOT NULL , 
    UPDATE_TIME DATETIME NOT NULL , 
    CREATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS AUTH_ROLE_RESOURCE;
CREATE TABLE AUTH_ROLE_RESOURCE (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    ROLE_ID VARCHAR(40) NOT NULL , 
    RESOURCE_ID VARCHAR(40) NOT NULL , 
    CREATE_TIME DATETIME NOT NULL , 
    UPDATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS AUTH_AUTHER_MENU;
CREATE TABLE AUTH_AUTHER_MENU (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    AUTHER_ID VARCHAR(40) NOT NULL , 
    MENU_ID VARCHAR(40) NOT NULL , 
    TYPE VARCHAR(40) NOT NULL , 
    SORT INT NOT NULL , 
    CREATE_TIME DATETIME NOT NULL , 
    UPDATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS SYS_DICTIONARY;
CREATE TABLE SYS_DICTIONARY (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    TYPE1 VARCHAR(50) NOT NULL , 
    TYPE2 VARCHAR(50) NOT NULL , 
    NAME1 VARCHAR(100) NOT NULL , 
    NAME2 VARCHAR(100) NOT NULL , 
    CODE VARCHAR(50) NOT NULL , 
    VALUE VARCHAR(100)  , 
    SORT INT NOT NULL , 
    DESCIPTION VARCHAR(200)  , 
    STATUS VARCHAR(1) NOT NULL , 
    UPDATE_TIME DATETIME NOT NULL , 
    CREATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS SYS_OPENREPORT;
CREATE TABLE SYS_OPENREPORT (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    NAME VARCHAR(40) NOT NULL , 
    CONF_TYPE VARCHAR(100) NOT NULL , 
    XML_CONTENT TEXT  , 
    TYPE1 VARCHAR(100) NOT NULL , 
    TYPE2 VARCHAR(100) NOT NULL , 
    DESCRIPTION VARCHAR(200)  , 
    UPDATE_TIME DATETIME NOT NULL , 
    CREATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS SYS_I18N;
CREATE TABLE SYS_I18N (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    MESSAGE_KEY VARCHAR(200) NOT NULL , 
    MESSAGE_CONTENT VARCHAR(2048)  
);


DROP TABLE IF EXISTS SYS_EX_TABLE;
CREATE TABLE SYS_EX_TABLE (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    REF_TABLE VARCHAR(100) NOT NULL , 
    COL_NAME VARCHAR(100) NOT NULL , 
    COL_TYPE VARCHAR(100) NOT NULL , 
    DESCRIPTION VARCHAR(200)  , 
    UPDATE_TIME DATETIME NOT NULL , 
    CREATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS SYS_EX_DATA;
CREATE TABLE SYS_EX_DATA (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    REF_TABLE VARCHAR(100) NOT NULL , 
    REF_ID VARCHAR(40) NOT NULL , 
    COL_NAME VARCHAR(100) NOT NULL , 
    COL_VALUE VARCHAR(2048)  , 
    DESCRIPTION VARCHAR(200)  , 
    UPDATE_TIME DATETIME NOT NULL , 
    CREATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS SYS_QUERY;
CREATE TABLE SYS_QUERY (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    NAME VARCHAR(200) NOT NULL , 
    CODE VARCHAR(40) NOT NULL , 
    DATA_SOURCE VARCHAR(200)  , 
    QUERY_CONTENT TEXT NOT NULL , 
    TYPE_1 VARCHAR(100) NOT NULL , 
    TYPE_2 VARCHAR(100) NOT NULL , 
    DESCRIPTION VARCHAR(200)  , 
    UPDATE_TIME DATETIME NOT NULL , 
    CREATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS SYS_SCRIPT;
CREATE TABLE SYS_SCRIPT (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    NAME VARCHAR(200) NOT NULL , 
    CODE VARCHAR(40) NOT NULL , 
    CONTENT TEXT NOT NULL , 
    PARAMETER TEXT  , 
    TYPE_1 VARCHAR(40) NOT NULL , 
    TYPE_2 VARCHAR(40) NOT NULL , 
    DESCRIPTION VARCHAR(200)  , 
    CREATE_TIME DATETIME NOT NULL , 
    UPDATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS LOG_ACCESS;
CREATE TABLE LOG_ACCESS (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    TYPE VARCHAR(40) NOT NULL , 
    USER VARCHAR(100) NOT NULL , 
    SOURCE VARCHAR(100) NOT NULL , 
    TARGET VARCHAR(2048) NOT NULL , 
    CREATE_TIME DATETIME NOT NULL , 
    UPDATE_TIME DATETIME NOT NULL 
);


DROP TABLE IF EXISTS LOG_OPERATION;
CREATE TABLE LOG_OPERATION (
    ID VARCHAR(40) NOT NULL  PRIMARY KEY, 
    TYPE VARCHAR(200) NOT NULL , 
    OPERATOR VARCHAR(200) NOT NULL , 
    TARGET VARCHAR(1000) NOT NULL , 
    START_TIME TIMESTAMP NOT NULL , 
    END_TIME TIMESTAMP NOT NULL , 
    COST_TIME INT NOT NULL , 
    RESULT VARCHAR(2000) NOT NULL , 
    CREATE_TIME DATETIME NOT NULL , 
    UPDATE_TIME DATETIME NOT NULL 
);


COMMENT ON TABLE AUTH_ACCOUNT IS '帐户管理';
COMMENT ON COLUMN AUTH_ACCOUNT.ID IS '主键';
COMMENT ON COLUMN AUTH_ACCOUNT.LOGIN_EMAIL IS '登录EMail';
COMMENT ON COLUMN AUTH_ACCOUNT.LOGIN_PASSWD IS '用户密码';
COMMENT ON COLUMN AUTH_ACCOUNT.STATUS IS '状态';
COMMENT ON COLUMN AUTH_ACCOUNT.TYPE IS '类型';
COMMENT ON COLUMN AUTH_ACCOUNT.USER_ID IS '用户';
COMMENT ON COLUMN AUTH_ACCOUNT.LAST_LOGIN IS '最后登录';
COMMENT ON COLUMN AUTH_ACCOUNT.LOGIN_TRY_TIMES IS '尝试次数';
COMMENT ON COLUMN AUTH_ACCOUNT.DESCRIPTION IS '描述';
COMMENT ON COLUMN AUTH_ACCOUNT.UPDATE_TIME IS '修改时间';
COMMENT ON COLUMN AUTH_ACCOUNT.CREATE_TIME IS '创建时间';
ALTER TABLE AUTH_ACCOUNT ADD CONSTRAINT UQ_AUTH_ACCOUNT_LOGIN_EMAIL UNIQUE(LOGIN_EMAIL);
ALTER TABLE AUTH_ACCOUNT ADD FOREIGN KEY (USER_ID) REFERENCES AUTH_USER (ID);
ALTER TABLE AUTH_ACCOUNT ALTER COLUMN LAST_LOGIN SET DEFAULT '1970-01-01 00:00:00';
ALTER TABLE AUTH_ACCOUNT ALTER COLUMN LOGIN_TRY_TIMES SET DEFAULT 0;
ALTER TABLE AUTH_ACCOUNT ALTER COLUMN UPDATE_TIME SET DEFAULT '1970-01-01 00:00:00';
ALTER TABLE AUTH_ACCOUNT ALTER COLUMN CREATE_TIME SET DEFAULT '1970-01-01 00:00:00';
COMMENT ON TABLE AUTH_ORGANIZATION IS '组织管理';
COMMENT ON COLUMN AUTH_ORGANIZATION.ID IS '主键';
COMMENT ON COLUMN AUTH_ORGANIZATION.NAME IS '组织机构名称';
COMMENT ON COLUMN AUTH_ORGANIZATION.PARENT_ID IS '上级机构';
COMMENT ON COLUMN AUTH_ORGANIZATION.ROOT_ID IS '根机构';
COMMENT ON COLUMN AUTH_ORGANIZATION.CODE IS '组织机构编码';
COMMENT ON COLUMN AUTH_ORGANIZATION.IS_USE_ROOT_MENU IS '使用根菜单';
COMMENT ON COLUMN AUTH_ORGANIZATION.TYPE1 IS '一级分类';
COMMENT ON COLUMN AUTH_ORGANIZATION.TYPE2 IS '二级分类';
COMMENT ON COLUMN AUTH_ORGANIZATION.DESCRIPTION IS '描述';
COMMENT ON COLUMN AUTH_ORGANIZATION.UPDATE_TIME IS '修改时间';
COMMENT ON COLUMN AUTH_ORGANIZATION.CREATE_TIME IS '创建时间';
ALTER TABLE AUTH_ORGANIZATION ADD CONSTRAINT UQ_AUTH_ORGANIZATION_NAME UNIQUE(NAME);
ALTER TABLE AUTH_ORGANIZATION ADD CONSTRAINT UQ_AUTH_ORGANIZATION_CODE UNIQUE(CODE);
ALTER TABLE AUTH_ORGANIZATION ADD FOREIGN KEY (PARENT_ID) REFERENCES AUTH_ORGANIZATION (ID);
ALTER TABLE AUTH_ORGANIZATION ADD FOREIGN KEY (ROOT_ID) REFERENCES AUTH_ORGANIZATION (ID);
ALTER TABLE AUTH_ORGANIZATION ALTER COLUMN UPDATE_TIME SET DEFAULT '1970-01-01 00:00:00';
ALTER TABLE AUTH_ORGANIZATION ALTER COLUMN CREATE_TIME SET DEFAULT '1970-01-01 00:00:00';
COMMENT ON TABLE AUTH_RESOURCE IS '资源管理';
COMMENT ON COLUMN AUTH_RESOURCE.ID IS '主键';
COMMENT ON COLUMN AUTH_RESOURCE.NAME IS '名称';
COMMENT ON COLUMN AUTH_RESOURCE.CODE IS '编码';
COMMENT ON COLUMN AUTH_RESOURCE.STATUS IS '状态';
COMMENT ON COLUMN AUTH_RESOURCE.TYPE1 IS '一级分类';
COMMENT ON COLUMN AUTH_RESOURCE.TYPE2 IS '二级分类';
COMMENT ON COLUMN AUTH_RESOURCE.DESCRIPTION IS '描述';
COMMENT ON COLUMN AUTH_RESOURCE.UPDATE_TIME IS '修改时间';
COMMENT ON COLUMN AUTH_RESOURCE.CREATE_TIME IS '创建时间';
ALTER TABLE AUTH_RESOURCE ADD CONSTRAINT UQ_AUTH_RESOURCE_NAME UNIQUE(NAME);
ALTER TABLE AUTH_RESOURCE ADD CONSTRAINT UQ_AUTH_RESOURCE_CODE UNIQUE(CODE);
ALTER TABLE AUTH_RESOURCE ALTER COLUMN STATUS SET DEFAULT 'N';
ALTER TABLE AUTH_RESOURCE ALTER COLUMN UPDATE_TIME SET DEFAULT '1970-01-01 00:00:00';
ALTER TABLE AUTH_RESOURCE ALTER COLUMN CREATE_TIME SET DEFAULT '1970-01-01 00:00:00';
COMMENT ON TABLE AUTH_USER IS '用户管理';
COMMENT ON COLUMN AUTH_USER.ID IS '主键';
COMMENT ON COLUMN AUTH_USER.NAME IS '用户名称';
COMMENT ON COLUMN AUTH_USER.STATUS IS '状态';
COMMENT ON COLUMN AUTH_USER.TYPE IS '类型';
COMMENT ON COLUMN AUTH_USER.TEL IS '联系电话';
COMMENT ON COLUMN AUTH_USER.EMAIL IS '联系EMAIL';
COMMENT ON COLUMN AUTH_USER.SEX IS '性别';
COMMENT ON COLUMN AUTH_USER.BIRTHDAY IS '生日';
COMMENT ON COLUMN AUTH_USER.FAMILY_ADDR IS '家庭地址';
COMMENT ON COLUMN AUTH_USER.WORK_ADDR IS '工作地址';
COMMENT ON COLUMN AUTH_USER.WORK_TEL IS '工作电话';
COMMENT ON COLUMN AUTH_USER.DESCRIPTION IS '描述';
COMMENT ON COLUMN AUTH_USER.UPDATE_TIME IS '修改时间';
COMMENT ON COLUMN AUTH_USER.CREATE_TIME IS '创建时间';
ALTER TABLE AUTH_USER ADD CONSTRAINT UQ_AUTH_USER_NAME UNIQUE(NAME);
ALTER TABLE AUTH_USER ADD CONSTRAINT UQ_AUTH_USER_EMAIL UNIQUE(EMAIL);
ALTER TABLE AUTH_USER ALTER COLUMN UPDATE_TIME SET DEFAULT '1970-01-01 00:00:00';
ALTER TABLE AUTH_USER ALTER COLUMN CREATE_TIME SET DEFAULT '1970-01-01 00:00:00';
COMMENT ON TABLE AUTH_AUTHER_ROLE IS '授权角色';
COMMENT ON COLUMN AUTH_AUTHER_ROLE.ID IS '主键';
COMMENT ON COLUMN AUTH_AUTHER_ROLE.AUTHER_ID IS '授权实体';
COMMENT ON COLUMN AUTH_AUTHER_ROLE.ROLE_ID IS '角色';
COMMENT ON COLUMN AUTH_AUTHER_ROLE.TYPE IS '分类';
COMMENT ON COLUMN AUTH_AUTHER_ROLE.CREATE_TIME IS '创建时间';
COMMENT ON COLUMN AUTH_AUTHER_ROLE.UPDATE_TIME IS '修改时间';
ALTER TABLE AUTH_AUTHER_ROLE ADD FOREIGN KEY (ROLE_ID) REFERENCES AUTH_ROLE (ID);
ALTER TABLE AUTH_AUTHER_ROLE ALTER COLUMN CREATE_TIME SET DEFAULT '1970-01-01 00:00:00';
ALTER TABLE AUTH_AUTHER_ROLE ALTER COLUMN UPDATE_TIME SET DEFAULT '1970-01-01 00:00:00';
COMMENT ON TABLE AUTH_ROLE IS '角色管理';
COMMENT ON COLUMN AUTH_ROLE.ID IS '主键';
COMMENT ON COLUMN AUTH_ROLE.NAME IS '名称';
COMMENT ON COLUMN AUTH_ROLE.CODE IS '编码';
COMMENT ON COLUMN AUTH_ROLE.TYPE1 IS '一级分类';
COMMENT ON COLUMN AUTH_ROLE.TYPE2 IS '二级分类';
COMMENT ON COLUMN AUTH_ROLE.STATUS IS '状态';
COMMENT ON COLUMN AUTH_ROLE.DESCRIPTION IS '描述';
COMMENT ON COLUMN AUTH_ROLE.UPDATE_TIME IS '修改时间';
COMMENT ON COLUMN AUTH_ROLE.CREATE_TIME IS '创建时间';
ALTER TABLE AUTH_ROLE ADD CONSTRAINT UQ_AUTH_ROLE_NAME UNIQUE(NAME);
ALTER TABLE AUTH_ROLE ADD CONSTRAINT UQ_AUTH_ROLE_CODE UNIQUE(CODE);
ALTER TABLE AUTH_ROLE ALTER COLUMN STATUS SET DEFAULT 'N';
ALTER TABLE AUTH_ROLE ALTER COLUMN UPDATE_TIME SET DEFAULT '1970-01-01 00:00:00';
ALTER TABLE AUTH_ROLE ALTER COLUMN CREATE_TIME SET DEFAULT '1970-01-01 00:00:00';
COMMENT ON TABLE AUTH_MENU IS '菜单管理';
COMMENT ON COLUMN AUTH_MENU.ID IS '主键';
COMMENT ON COLUMN AUTH_MENU.NAME IS '菜单名称';
COMMENT ON COLUMN AUTH_MENU.RESOURCE_ID IS '资源';
COMMENT ON COLUMN AUTH_MENU.TYPE1 IS '一级分类';
COMMENT ON COLUMN AUTH_MENU.TYPE2 IS '二级分类';
COMMENT ON COLUMN AUTH_MENU.PARENT_ID IS '父菜单';
COMMENT ON COLUMN AUTH_MENU.ROOT_ID IS '根菜单';
COMMENT ON COLUMN AUTH_MENU.MENU_INDEX IS '菜单排序';
COMMENT ON COLUMN AUTH_MENU.MAX_LEVEL IS '菜单层次';
COMMENT ON COLUMN AUTH_MENU.ICO IS '图标';
COMMENT ON COLUMN AUTH_MENU.DESCRIPTION IS '描述';
COMMENT ON COLUMN AUTH_MENU.UPDATE_TIME IS '修改时间';
COMMENT ON COLUMN AUTH_MENU.CREATE_TIME IS '创建时间';
ALTER TABLE AUTH_MENU ADD CONSTRAINT UQ_AUTH_MENU_NAME UNIQUE(NAME);
ALTER TABLE AUTH_MENU ADD FOREIGN KEY (RESOURCE_ID) REFERENCES AUTH_RESOURCE (ID);
ALTER TABLE AUTH_MENU ADD FOREIGN KEY (PARENT_ID) REFERENCES AUTH_MENU (ID);
ALTER TABLE AUTH_MENU ADD FOREIGN KEY (ROOT_ID) REFERENCES AUTH_MENU (ID);
ALTER TABLE AUTH_MENU ALTER COLUMN MENU_INDEX SET DEFAULT 100;
ALTER TABLE AUTH_MENU ALTER COLUMN MAX_LEVEL SET DEFAULT 3;
ALTER TABLE AUTH_MENU ALTER COLUMN UPDATE_TIME SET DEFAULT '1970-01-01 00:00:00';
ALTER TABLE AUTH_MENU ALTER COLUMN CREATE_TIME SET DEFAULT '1970-01-01 00:00:00';
COMMENT ON TABLE AUTH_ORGANIZATION_USER IS '组织用户';
COMMENT ON COLUMN AUTH_ORGANIZATION_USER.ID IS '主键';
COMMENT ON COLUMN AUTH_ORGANIZATION_USER.USER_ID IS '用户';
COMMENT ON COLUMN AUTH_ORGANIZATION_USER.ORGANIZATION_ID IS '组织机构';
COMMENT ON COLUMN AUTH_ORGANIZATION_USER.UPDATE_TIME IS '修改时间';
COMMENT ON COLUMN AUTH_ORGANIZATION_USER.CREATE_TIME IS '创建时间';
ALTER TABLE AUTH_ORGANIZATION_USER ADD FOREIGN KEY (USER_ID) REFERENCES AUTH_USER (ID);
ALTER TABLE AUTH_ORGANIZATION_USER ADD FOREIGN KEY (ORGANIZATION_ID) REFERENCES AUTH_ORGANIZATION (ID);
ALTER TABLE AUTH_ORGANIZATION_USER ALTER COLUMN UPDATE_TIME SET DEFAULT '1970-01-01 00:00:00';
ALTER TABLE AUTH_ORGANIZATION_USER ALTER COLUMN CREATE_TIME SET DEFAULT '1970-01-01 00:00:00';
COMMENT ON TABLE AUTH_ROLE_RESOURCE IS '角色资源';
COMMENT ON COLUMN AUTH_ROLE_RESOURCE.ID IS '主键';
COMMENT ON COLUMN AUTH_ROLE_RESOURCE.ROLE_ID IS '角色';
COMMENT ON COLUMN AUTH_ROLE_RESOURCE.RESOURCE_ID IS '资源';
COMMENT ON COLUMN AUTH_ROLE_RESOURCE.CREATE_TIME IS '创建时间';
COMMENT ON COLUMN AUTH_ROLE_RESOURCE.UPDATE_TIME IS '修改时间';
ALTER TABLE AUTH_ROLE_RESOURCE ADD FOREIGN KEY (ROLE_ID) REFERENCES AUTH_ROLE (ID);
ALTER TABLE AUTH_ROLE_RESOURCE ADD FOREIGN KEY (RESOURCE_ID) REFERENCES AUTH_RESOURCE (ID);
ALTER TABLE AUTH_ROLE_RESOURCE ALTER COLUMN CREATE_TIME SET DEFAULT '1970-01-01 00:00:00';
ALTER TABLE AUTH_ROLE_RESOURCE ALTER COLUMN UPDATE_TIME SET DEFAULT '1970-01-01 00:00:00';
COMMENT ON TABLE AUTH_AUTHER_MENU IS '授权菜单';
COMMENT ON COLUMN AUTH_AUTHER_MENU.ID IS '主键';
COMMENT ON COLUMN AUTH_AUTHER_MENU.AUTHER_ID IS '授权实体';
COMMENT ON COLUMN AUTH_AUTHER_MENU.MENU_ID IS '菜单';
COMMENT ON COLUMN AUTH_AUTHER_MENU.TYPE IS '分类';
COMMENT ON COLUMN AUTH_AUTHER_MENU.SORT IS '排序';
COMMENT ON COLUMN AUTH_AUTHER_MENU.CREATE_TIME IS '创建时间';
COMMENT ON COLUMN AUTH_AUTHER_MENU.UPDATE_TIME IS '修改时间';
CREATE INDEX AUTH_AUTHER_MENU_AUTHER_ID ON AUTH_AUTHER_MENU(AUTHER_ID);
CREATE INDEX AUTH_AUTHER_MENU_TYPE ON AUTH_AUTHER_MENU(TYPE);
CREATE INDEX AUTH_AUTHER_MENU_CREATE_TIME ON AUTH_AUTHER_MENU(CREATE_TIME);
CREATE INDEX AUTH_AUTHER_MENU_UPDATE_TIME ON AUTH_AUTHER_MENU(UPDATE_TIME);
ALTER TABLE AUTH_AUTHER_MENU ADD FOREIGN KEY (MENU_ID) REFERENCES AUTH_MENU (ID);
ALTER TABLE AUTH_AUTHER_MENU ALTER COLUMN SORT SET DEFAULT 100;
COMMENT ON TABLE SYS_DICTIONARY IS '字典管理';
COMMENT ON COLUMN SYS_DICTIONARY.ID IS '主键';
COMMENT ON COLUMN SYS_DICTIONARY.TYPE1 IS '一级分类';
COMMENT ON COLUMN SYS_DICTIONARY.TYPE2 IS '二级分类';
COMMENT ON COLUMN SYS_DICTIONARY.NAME1 IS '一级名称';
COMMENT ON COLUMN SYS_DICTIONARY.NAME2 IS '二级名称';
COMMENT ON COLUMN SYS_DICTIONARY.CODE IS '编码';
COMMENT ON COLUMN SYS_DICTIONARY.VALUE IS '字典值';
COMMENT ON COLUMN SYS_DICTIONARY.SORT IS '排序';
COMMENT ON COLUMN SYS_DICTIONARY.DESCIPTION IS '描述';
COMMENT ON COLUMN SYS_DICTIONARY.STATUS IS '状态';
COMMENT ON COLUMN SYS_DICTIONARY.UPDATE_TIME IS '修改时间';
COMMENT ON COLUMN SYS_DICTIONARY.CREATE_TIME IS '创建时间';
ALTER TABLE SYS_DICTIONARY ALTER COLUMN SORT SET DEFAULT '0';
ALTER TABLE SYS_DICTIONARY ALTER COLUMN STATUS SET DEFAULT 'Y';
ALTER TABLE SYS_DICTIONARY ALTER COLUMN UPDATE_TIME SET DEFAULT '1970-01-01 00:00:00';
ALTER TABLE SYS_DICTIONARY ALTER COLUMN CREATE_TIME SET DEFAULT '1970-01-01 00:00:00';
COMMENT ON TABLE SYS_OPENREPORT IS '报表管理';
COMMENT ON COLUMN SYS_OPENREPORT.ID IS '主键';
COMMENT ON COLUMN SYS_OPENREPORT.NAME IS '名称';
COMMENT ON COLUMN SYS_OPENREPORT.CONF_TYPE IS '配置类别';
COMMENT ON COLUMN SYS_OPENREPORT.XML_CONTENT IS 'XML内容';
COMMENT ON COLUMN SYS_OPENREPORT.TYPE1 IS '分类1';
COMMENT ON COLUMN SYS_OPENREPORT.TYPE2 IS '分类2';
COMMENT ON COLUMN SYS_OPENREPORT.DESCRIPTION IS '描述';
COMMENT ON COLUMN SYS_OPENREPORT.UPDATE_TIME IS '修改时间';
COMMENT ON COLUMN SYS_OPENREPORT.CREATE_TIME IS '创建时间';
ALTER TABLE SYS_OPENREPORT ADD CONSTRAINT UQ_SYS_OPENREPORT_NAME UNIQUE(NAME);
COMMENT ON TABLE SYS_I18N IS '国际化管理';
COMMENT ON COLUMN SYS_I18N.ID IS '主键';
COMMENT ON COLUMN SYS_I18N.MESSAGE_KEY IS '国际化Key';
COMMENT ON COLUMN SYS_I18N.MESSAGE_CONTENT IS '国际化内容';
ALTER TABLE SYS_I18N ADD CONSTRAINT UQ_SYS_I18N_MESSAGE_KEY UNIQUE(MESSAGE_KEY);
COMMENT ON TABLE SYS_EX_TABLE IS '扩展表管理';
COMMENT ON COLUMN SYS_EX_TABLE.ID IS '主键';
COMMENT ON COLUMN SYS_EX_TABLE.REF_TABLE IS '关联表';
COMMENT ON COLUMN SYS_EX_TABLE.COL_NAME IS '字段名称';
COMMENT ON COLUMN SYS_EX_TABLE.COL_TYPE IS '字段类型';
COMMENT ON COLUMN SYS_EX_TABLE.DESCRIPTION IS '描述';
COMMENT ON COLUMN SYS_EX_TABLE.UPDATE_TIME IS '修改时间';
COMMENT ON COLUMN SYS_EX_TABLE.CREATE_TIME IS '创建时间';
COMMENT ON TABLE SYS_EX_DATA IS '扩展数据管理';
COMMENT ON COLUMN SYS_EX_DATA.ID IS '主键';
COMMENT ON COLUMN SYS_EX_DATA.REF_TABLE IS '表名';
COMMENT ON COLUMN SYS_EX_DATA.REF_ID IS '关联主键';
COMMENT ON COLUMN SYS_EX_DATA.COL_NAME IS '字段名称';
COMMENT ON COLUMN SYS_EX_DATA.COL_VALUE IS '字段值';
COMMENT ON COLUMN SYS_EX_DATA.DESCRIPTION IS '描述';
COMMENT ON COLUMN SYS_EX_DATA.UPDATE_TIME IS '修改时间';
COMMENT ON COLUMN SYS_EX_DATA.CREATE_TIME IS '创建时间';
COMMENT ON TABLE SYS_QUERY IS '通用查询管理';
COMMENT ON COLUMN SYS_QUERY.ID IS '主键';
COMMENT ON COLUMN SYS_QUERY.NAME IS '名称';
COMMENT ON COLUMN SYS_QUERY.CODE IS '代码';
COMMENT ON COLUMN SYS_QUERY.DATA_SOURCE IS '数据源';
COMMENT ON COLUMN SYS_QUERY.QUERY_CONTENT IS '查询语句';
COMMENT ON COLUMN SYS_QUERY.TYPE_1 IS '一级分类';
COMMENT ON COLUMN SYS_QUERY.TYPE_2 IS '二级分类';
COMMENT ON COLUMN SYS_QUERY.DESCRIPTION IS '描述';
COMMENT ON COLUMN SYS_QUERY.UPDATE_TIME IS '修改时间';
COMMENT ON COLUMN SYS_QUERY.CREATE_TIME IS '创建时间';
CREATE INDEX SYS_QUERY_UPDATE_TIME ON SYS_QUERY(UPDATE_TIME);
CREATE INDEX SYS_QUERY_CREATE_TIME ON SYS_QUERY(CREATE_TIME);
ALTER TABLE SYS_QUERY ADD CONSTRAINT UQ_SYS_QUERY_NAME UNIQUE(NAME);
ALTER TABLE SYS_QUERY ADD CONSTRAINT UQ_SYS_QUERY_CODE UNIQUE(CODE);
COMMENT ON TABLE SYS_SCRIPT IS '脚本管理';
COMMENT ON COLUMN SYS_SCRIPT.ID IS '主键';
COMMENT ON COLUMN SYS_SCRIPT.NAME IS '名称';
COMMENT ON COLUMN SYS_SCRIPT.CODE IS '代码';
COMMENT ON COLUMN SYS_SCRIPT.CONTENT IS '内容';
COMMENT ON COLUMN SYS_SCRIPT.PARAMETER IS '参数';
COMMENT ON COLUMN SYS_SCRIPT.TYPE_1 IS '分类1';
COMMENT ON COLUMN SYS_SCRIPT.TYPE_2 IS '分类2';
COMMENT ON COLUMN SYS_SCRIPT.DESCRIPTION IS '描述';
COMMENT ON COLUMN SYS_SCRIPT.CREATE_TIME IS '创建时间';
COMMENT ON COLUMN SYS_SCRIPT.UPDATE_TIME IS '更新时间';
CREATE INDEX SYS_SCRIPT_CREATE_TIME ON SYS_SCRIPT(CREATE_TIME);
CREATE INDEX SYS_SCRIPT_UPDATE_TIME ON SYS_SCRIPT(UPDATE_TIME);
ALTER TABLE SYS_SCRIPT ADD CONSTRAINT UQ_SYS_SCRIPT_NAME UNIQUE(NAME);
ALTER TABLE SYS_SCRIPT ADD CONSTRAINT UQ_SYS_SCRIPT_CODE UNIQUE(CODE);
COMMENT ON TABLE LOG_ACCESS IS '访问日志';
COMMENT ON COLUMN LOG_ACCESS.ID IS '主键';
COMMENT ON COLUMN LOG_ACCESS.TYPE IS '类型';
COMMENT ON COLUMN LOG_ACCESS.USER IS '访问者';
COMMENT ON COLUMN LOG_ACCESS.SOURCE IS '来源';
COMMENT ON COLUMN LOG_ACCESS.TARGET IS '目标';
COMMENT ON COLUMN LOG_ACCESS.CREATE_TIME IS '创建时间';
COMMENT ON COLUMN LOG_ACCESS.UPDATE_TIME IS '修改时间';
CREATE INDEX LOG_ACCESS_TYPE ON LOG_ACCESS(TYPE);
CREATE INDEX LOG_ACCESS_USER ON LOG_ACCESS(USER);
CREATE INDEX LOG_ACCESS_SOURCE ON LOG_ACCESS(SOURCE);
CREATE INDEX LOG_ACCESS_CREATE_TIME ON LOG_ACCESS(CREATE_TIME);
CREATE INDEX LOG_ACCESS_UPDATE_TIME ON LOG_ACCESS(UPDATE_TIME);
COMMENT ON TABLE LOG_OPERATION IS '操作日志';
COMMENT ON COLUMN LOG_OPERATION.ID IS '主键';
COMMENT ON COLUMN LOG_OPERATION.TYPE IS '类型';
COMMENT ON COLUMN LOG_OPERATION.OPERATOR IS '操作者';
COMMENT ON COLUMN LOG_OPERATION.TARGET IS '目标';
COMMENT ON COLUMN LOG_OPERATION.START_TIME IS '开始时间';
COMMENT ON COLUMN LOG_OPERATION.END_TIME IS '结束时间';
COMMENT ON COLUMN LOG_OPERATION.COST_TIME IS '耗时';
COMMENT ON COLUMN LOG_OPERATION.RESULT IS '结果';
COMMENT ON COLUMN LOG_OPERATION.CREATE_TIME IS '创建时间';
COMMENT ON COLUMN LOG_OPERATION.UPDATE_TIME IS '修改时间';
CREATE INDEX LOG_OPERATION_TYPE ON LOG_OPERATION(TYPE);
CREATE INDEX LOG_OPERATION_OPERATOR ON LOG_OPERATION(OPERATOR);
CREATE INDEX LOG_OPERATION_TARGET ON LOG_OPERATION(TARGET);
CREATE INDEX LOG_OPERATION_START_TIME ON LOG_OPERATION(START_TIME);
CREATE INDEX LOG_OPERATION_END_TIME ON LOG_OPERATION(END_TIME);
CREATE INDEX LOG_OPERATION_COST_TIME ON LOG_OPERATION(COST_TIME);
CREATE INDEX LOG_OPERATION_CREATE_TIME ON LOG_OPERATION(CREATE_TIME);
CREATE INDEX LOG_OPERATION_UPDATE_TIME ON LOG_OPERATION(UPDATE_TIME);;


SET REFERENTIAL_INTEGRITY TRUE;
