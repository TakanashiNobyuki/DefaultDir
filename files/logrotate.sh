#!/bin/bash
set -e

date=`date "+%Y%m%d_%H%M%S"`
log_dir=/home/AnsibleUser/projects/oda/logs


mv ${log_dir}/ansible_.log ${log_dir}/ansible_${date}.log
