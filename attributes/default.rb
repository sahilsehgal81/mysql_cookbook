#Created by Sahil Sehgal
#Parameters to be assigned to MySQL Server
default['mysql']['bind_address']               = node.attribute?('cloud') && node['cloud']['local_ipv4'] ? node['cloud']['local_ipv4'] : node['ipaddress']
default['mysql']['server']['packages'] = ['mysql-server']
default['mysql']['port']                       = 3306
default['mysql']['nice']                       = 0
default['mysql']['data_dir'] = '/var/lib/mysql'
default['mysql']['server_root_user'] = 'root'
default['mysql']['server_root_password'] = 'sahilsehgal'
# actual configs start here
 default['mysql']['auto-increment-increment']        = 1
 default['mysql']['auto-increment-offset']           = 1

 default['mysql']['allow_remote_root']               = false
 default['mysql']['remove_anonymous_users']          = false
 default['mysql']['remove_test_database']            = false
 default['mysql']['root_network_acl']                = nil
 default['mysql']['tunable']['character-set-server'] = 'utf8'
 default['mysql']['tunable']['collation-server']     = 'utf8_general_ci'
 default['mysql']['tunable']['lower_case_table_names']  = nil
 default['mysql']['tunable']['back_log']             = '128'
 default['mysql']['tunable']['key_buffer_size']           = '256M'
 default['mysql']['tunable']['myisam_sort_buffer_size']   = '8M'
 default['mysql']['tunable']['myisam_max_sort_file_size'] = '2147483648'
 default['mysql']['tunable']['myisam_repair_threads']     = '1'
 default['mysql']['tunable']['myisam-recover']            = 'BACKUP'
 default['mysql']['tunable']['max_allowed_packet']   = '16M'
 default['mysql']['tunable']['max_connections']      = '800'
 default['mysql']['tunable']['max_connect_errors']   = '10'
 default['mysql']['tunable']['concurrent_insert']    = '2'
 default['mysql']['tunable']['connect_timeout']      = '10'
 default['mysql']['tunable']['tmp_table_size']       = '32M'
 default['mysql']['tunable']['max_heap_table_size']  = node['mysql']['tunable']['tmp_table_size']
 default['mysql']['tunable']['bulk_insert_buffer_size'] = node['mysql']['tunable']['tmp_table_size']
 default['mysql']['tunable']['net_read_timeout']     = '30'
 default['mysql']['tunable']['net_write_timeout']    = '30'
 default['mysql']['tunable']['table_cache']          = '128'
 default['mysql']['tunable']['table_open_cache']     = node['mysql']['tunable']['table_cache']
 default['mysql']['tunable']['thread_cache_size']    = 8
 default['mysql']['tunable']['thread_concurrency']   = 10
 default['mysql']['tunable']['thread_stack']         = '256K'
 default['mysql']['tunable']['sort_buffer_size']     = '2M'
 default['mysql']['tunable']['read_buffer_size']     = '128k'
 default['mysql']['tunable']['read_rnd_buffer_size'] = '256k'
 default['mysql']['tunable']['join_buffer_size']     = '128k'
 default['mysql']['tunable']['wait_timeout']         = '180'
 default['mysql']['tunable']['open-files-limit']     = '1024'
 default['mysql']['tunable']['sql_mode'] = nil
#innoDB related configurations
 default['mysql']['tunable']['innodb_log_file_size']            = '5M'
 default['mysql']['tunable']['innodb_buffer_pool_size']         = '128M'
 default['mysql']['tunable']['innodb_buffer_pool_instances']    = '4'
 default['mysql']['tunable']['innodb_additional_mem_pool_size'] = '8M'
 default['mysql']['tunable']['innodb_data_file_path']           = 'ibdata1:10M:autoextend'
 default['mysql']['tunable']['innodb_flush_method']             = false
 default['mysql']['tunable']['innodb_log_buffer_size']          = '8M'
 default['mysql']['tunable']['innodb_write_io_threads']         = '4'
 default['mysql']['tunable']['innodb_io_capacity']              = '200'
 default['mysql']['tunable']['innodb_file_per_table']           = true
 default['mysql']['tunable']['innodb_lock_wait_timeout']        = '60'

#Configurations related to Query Cache 
 default['mysql']['tunable']['query_cache_limit']    = '1M'
 default['mysql']['tunable']['query_cache_size']     = '16M'

 default['mysql']['tunable']['long_query_time']      = 2
 default['mysql']['tunable']['expire_logs_days']     = 10
 default['mysql']['tunable']['max_binlog_size']      = '100M'
 default['mysql']['tunable']['binlog_cache_size']    = '32K'
#Tmp directory path
 default['mysql']['tmpdir'] = ['/tmp']
 default['mysql']['server']['slow_query_log']       = 1
 default['mysql']['server']['slow_query_log_file']  = '/var/log/mysql/slow.log'

 default['mysql']['server']['basedir'] = '/usr'
 default['mysql']['server']['tmpdir'] = ['/tmp']

 default['mysql']['server']['directories']['run_dir']              = '/var/run/mysqld'
 default['mysql']['server']['directories']['log_dir']              = '/var/lib/mysql'
 default['mysql']['server']['directories']['slow_log_dir']         = '/var/log/mysql'
 default['mysql']['server']['directories']['confd_dir']            = '/etc/mysql/conf.d'

 default['mysql']['server']['mysqladmin_bin']       = '/usr/bin/mysqladmin'
 default['mysql']['server']['mysql_bin']            = '/usr/bin/mysql'

 default['mysql']['server']['pid_file']             = '/var/run/mysqld/mysqld.pid'
 default['mysql']['server']['socket']               = '/var/lib/mysql/mysql.sock'
