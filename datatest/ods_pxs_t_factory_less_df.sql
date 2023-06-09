DROP TABLE IF EXISTS `px_ods`.`ods_pxs_t_factory_less_df`;

CREATE TABLE IF NOT EXISTS `px_ods`.`ods_pxs_t_factory_less_df`(
 `id`							bigint			comment	 '主键'
,`enterprise_id`				bigint			comment	 '企业ID'
,`commodity_id`					bigint			comment	 '商品ID'
,`commodity_code`				string			comment	 '商品编码'
,`delivery_time`				string			comment	 '送货日期'
,`total_count`					decimal(18,4)	comment	 '厂少总数量'
,`factory_less_reason`			string			comment	 '厂少原因'
,`create_id`					bigint			comment	 '创建人id'
,`create_time`					string			comment	 '创建时间'
,`update_id`					bigint			comment	 '更新人id'
,`update_time`					string			comment	 '更新时间'
,`source_db`                    string          comment  '源数据库名'
,`source_table`                 string          comment  '源系统表名'
,`is_deleted`					tinyint			comment  '是否(物理)删除'
,`imported_time`                string          comment  '目标导入时间'
,`inserted_time`                string          comment  '目标初次插入时间'
,`updated_time`                 string          comment  '目标最后更新时间'
) comment 'B端厂少表'
partitioned by (dt string comment '分区')-- 日分区:yyyy-mm-dd
stored AS parquet;




