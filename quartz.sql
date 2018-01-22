- ----------------------------
-- Table structure for `quartz_task_informations`
-- ----------------------------
DROP TABLE IF EXISTS `quartz_task_informations`;
CREATE TABLE `quartz_task_informations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL COMMENT '�汾�ţ���Ҫ�ֹ�������',
  `taskNo` varchar(64) NOT NULL COMMENT '������',
  `taskName` varchar(64) NOT NULL COMMENT '��������',
  `schedulerRule` varchar(64) NOT NULL COMMENT '��ʱ������ʽ',
  `frozenStatus` varchar(16) NOT NULL COMMENT '����״̬',
  `executorNo` varchar(128) NOT NULL COMMENT 'ִ�з�',
  `frozenTime` bigint(13) DEFAULT NULL COMMENT '����ʱ��',
  `unfrozenTime` bigint(13) DEFAULT NULL COMMENT '�ⶳʱ��',
  `createTime` bigint(13) NOT NULL COMMENT '����ʱ��',
  `lastModifyTime` bigint(13) DEFAULT NULL COMMENT '����޸�ʱ��',
  `sendType` varchar(64) DEFAULT NULL COMMENT '���ͷ�ʽ',
  `url` varchar(64) DEFAULT NULL COMMENT '�����ַ',
  `executeParamter` varchar(2000) DEFAULT NULL COMMENT 'ִ�в���',
  `timeKey` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='��ʱ������Ϣ��';


-- ----------------------------
-- Table structure for `quartz_task_records`
-- ----------------------------
DROP TABLE IF EXISTS `quartz_task_records`;
CREATE TABLE `quartz_task_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taskNo` varchar(64) NOT NULL COMMENT '������',
  `timeKeyValue` varchar(32) DEFAULT NULL COMMENT 'ִ��ʱ���ʽֵ',
  `executeTime` bigint(13) NOT NULL COMMENT 'ִ��ʱ��',
  `taskStatus` varchar(16) NOT NULL COMMENT '����״̬',
  `failcount` int(10) DEFAULT NULL COMMENT 'ʧ��ͳ����',
  `failReason` varchar(64) DEFAULT NULL COMMENT 'ʧ�ܴ�������',
  `createTime` bigint(13) NOT NULL COMMENT '����ʱ��',
  `lastModifyTime` bigint(13) DEFAULT NULL COMMENT '����޸�ʱ��',
  PRIMARY KEY (`id`),
  KEY `idx_task_records_taskno` (`taskNo`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='��ʱ����ִ�������¼��';


-- ----------------------------
-- Table structure for `quartz_task_errors`
-- ----------------------------
DROP TABLE IF EXISTS `quartz_task_errors`;
CREATE TABLE `quartz_task_errors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taskExecuteRecordId` varchar(64) NOT NULL COMMENT '����ִ�м�¼Id',
  `errorKey` varchar(1024) NOT NULL COMMENT '��Ϣ�ؼ���',
  `errorValue` text COMMENT '��Ϣ����',
  `createTime` bigint(13) NOT NULL COMMENT '����ʱ��',
  `lastModifyTime` bigint(13) DEFAULT NULL COMMENT '����޸�ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='��ʱ��������ֳ���Ϣ��';
