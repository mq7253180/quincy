connInfo=" -h10.10.145.34 -P3306 -umoneyAuthorRead –ptAnhKleylgoSWXAN bbt "
todoPrefix="mysqldump"${connInfo}
filePath=$1"/sql"
mobileNums=$2
if [ ! -d "$1" ]; then
  mkdir $1
  chmod 777 $1
fi
if [ -d "${filePath}" ]; then
  rm -rf ${filePath}
fi
mkdir ${filePath}
chmod 777 ${filePath}
todo=${todoPrefix}
todo=${todoPrefix}"-R -E --triggers "

todo=${todo}"sequence_data "
todo=${todo}"tb_uplan_work_day "
todo=${todo}"tb_core_role "
todo=${todo}"tb_core_dict "
todo=${todo}"tb_lottery_prize "
todo=${todo}"tb_core_bank_info "
#todo=${todo}"tb_core_bank_limit "
todo=${todo}"tb_core_bank_pay_info "
todo=${todo}"tb_task_info "
todo=${todo}"tb_task_record "
todo=${todo}"tb_rmbbox_loan "
todo=${todo}"tb_claim_product "
todo=${todo}"tb_asset_loan "
todo=${todo}"tb_asset_loan_account "
todo=${todo}"tb_nmd_staff "
todo=${todo}"tb_core_employee "
todo=${todo}"tb_core_cms_article "
todo=${todo}"tb_rmbbox_loan_recommend "
todo=${todo}"tb_outline_investment "
todo=${todo}"tb_product_config "
todo=${todo}"tb_uplan "
todo=${todo}"tb_nmd_lend_customer "
todo=${todo}"tb_claim_product_label "
todo=${todo}"tb_asset_loan_reward_rate "
todo=${todo}"tb_core_emp_role "
todo=${todo}"tb_rmbbox_contract_template "
todo=${todo}"tb_rmbbox_loan_request_fee "

todo=${todo}">${filePath}/core.sql "
echo "Commond is executing: "${todo}
eval $todo
mobileNums=`echo ${mobileNums}|sed 's/,/'"','"'/g'`
mobileNums="'"${mobileNums}"'"
userIds=`mysql${connInfo} -e "SELECT user_id FROM tb_core_user WHERE user_mobile IN (${mobileNums})"|awk '{print $0}'|sed '1d'|sed ':a;N;$!ba;s/\n/'"','"'/g'`
userIds="'"${userIds}"'"
todo=${todoPrefix}

todo=${todo}"tb_core_user "
todo=${todo}"tb_core_binding "
todo=${todo}"tb_core_user_auth "
todo=${todo}"tb_core_user_ext "
todo=${todo}"tb_core_user_extension_info "
todo=${todo}"tb_core_user_fund "
todo=${todo}"tb_core_user_fund_record "
todo=${todo}"tb_core_order "
todo=${todo}"tb_rmbbox_invest "
todo=${todo}"tb_claim_invest "
todo=${todo}"tb_core_user_raisingrates "
todo=${todo}"tb_core_user_giftcard "
todo=${todo}"tb_user_experience "
todo=${todo}"tb_lottery_prize_record "
todo=${todo}"tb_core_repay_result_record "
todo=${todo}"tb_asset_invest "
todo=${todo}"tb_asset_loan_repayment "
todo=${todo}"tb_core_certificate "
todo=${todo}"tb_core_user_maintenance "
todo=${todo}"tb_rmbbox_loan_request "
todo=${todo}"tb_user_message "
todo=${todo}"tb_core_user_login_record "
todo=${todo}"tb_uplan_invest "
todo=${todo}"tb_user_temp_import "
todo=${todo}"tb_claim_repay_apply "
todo=${todo}"tb_claim_invest_current "
todo=${todo}"tb_core_virtual_account "
todo=${todo}"tb_claim_deposit_profit "
todo=${todo}"tb_claim_current_record "
todo=${todo}"tb_user_device "
todo=${todo}"tb_user_white_list "
todo=${todo}"tb_core_platform_fund_request "
todo=${todo}"tb_core_user_credit "

todo=${todo}"-w "'"user_id IN ('"${userIds}"')"'" "
todo=${todo}">${filePath}/tables-with-user_id.sql"
echo "Commond is executing: "${todo}
eval $todo
todo=${todoPrefix}
todo=${todo}"tb_core_user "
todo=${todo}"tb_core_user_fund "
#todo=${todo}"tb_core_user_fund_record "
todo=${todo}"-t -w "'"user_id='"'D3EBE66B-522C-11E6-80B8-525400C920FE'"'"'" "
todo=${todo}">${filePath}/guarantee-user.sql"
echo "Commond is executing: "${todo}
eval $todo
todo=${todoPrefix}
todo=${todo}"tb_core_user_fund_record "
todo=${todo}"-t -x -w "'"seq=(SELECT MAX(seq) FROM tb_core_user_fund_record WHERE user_id='"'D3EBE66B-522C-11E6-80B8-525400C920FE'"')"'" "
todo=${todo}">${filePath}/guarantee-user-fund-record.sql"
echo "Commond is executing: "${todo}
eval $todo
todo=${todoPrefix}"tb_asset_invest_repayment_detail -x -w "'"EXISTS(SELECT i.invest_id FROM tb_asset_invest i WHERE i.invest_id=tb_asset_invest_repayment_detail.invest_id AND i.user_id IN ('"${userIds}"'))"'">${filePath}/tb_asset_invest_repayment_detail.sql"
echo "Commond is executing: "${todo}
eval $todo
todo=${todoPrefix}"tb_core_repay_download_record -x -w "'"EXISTS(SELECT o.order_id FROM tb_core_order o WHERE o.order_id=tb_core_repay_download_record.order_id AND o.user_id IN ('"${userIds}"'))"'">${filePath}/tb_core_repay_download_record.sql"
echo "Commond is executing: "${todo}
eval $todo
todo=${todoPrefix}"tb_core_operation_record -w "'"performer_id IN ('"${userIds}"')"'">${filePath}/tb_core_operation_record.sql"
echo "Commond is executing: "${todo}
eval $todo
todo=${todoPrefix}"tb_core_certificate_record -x -w "'"EXISTS(SELECT c.certificate_id FROM tb_core_certificate c WHERE c.certificate_id=tb_core_certificate_record.certificate_id AND c.user_id IN ('"${userIds}"'))"'">${filePath}/tb_core_certificate_record.sql"
echo "Commond is executing: "${todo}
eval $todo
todo=${todoPrefix}"tb_core_file -w "'"owner_id IN ('"${userIds}"')"'">${filePath}/tb_core_file.sql"
echo "Commond is executing: "${todo}
eval $todo
todo=${todoPrefix}"tb_push_message -x -w "'"EXISTS(SELECT t.message_id FROM tb_user_message t WHERE t.message_id=tb_push_message.message_id AND t.user_id IN ('"${userIds}"'))"'">${filePath}/tb_push_message.sql"
echo "Commond is executing: "${todo}
eval $todo
todo=${todoPrefix}"tb_uplan_income -x -w "'"EXISTS(SELECT t.invest_id FROM tb_uplan_invest t WHERE t.invest_id=tb_uplan_income.invest_id AND t.user_id IN ('"${userIds}"'))"'">${filePath}/tb_uplan_income.sql"
echo "Commond is executing: "${todo}
eval $todo
todo=${todoPrefix}"tb_rmbbox_invest_repayment -x -w "'"EXISTS(SELECT t.invest_id FROM tb_rmbbox_invest t WHERE t.invest_id=tb_rmbbox_invest_repayment.invest_id AND t.user_id IN ('"${userIds}"'))"'">${filePath}/tb_rmbbox_invest_repayment.sql"
echo "Commond is executing: "${todo}
eval $todo
todo=${todoPrefix}"tb_claim_repayment -x -w "'"EXISTS(SELECT t.invest_id FROM tb_claim_invest t WHERE t.invest_id=tb_claim_repayment.invest_id AND t.user_id IN ('"${userIds}"'))"'">${filePath}/tb_claim_repayment.sql"
echo "Commond is executing: "${todo}
eval $todo
todo=${todoPrefix}"tb_core_platform_fund_record -x -w "'"id=(SELECT MAX(id) FROM tb_core_platform_fund_record WHERE status='"'SUCCESSFUL'"' AND platform_name='"'PLATFORM_A'"')"'">${filePath}/tb_core_platform_fund_record-A.sql"
echo "Commond is executing: "${todo}
eval $todo
todo=${todoPrefix}"tb_core_platform_fund_record -t -x -w "'"id=(SELECT MAX(id) FROM tb_core_platform_fund_record WHERE status='"'SUCCESSFUL'"' AND platform_name='"'PLATFORM_B'"')"'">${filePath}/tb_core_platform_fund_record-B.sql"
echo "Commond is executing: "${todo}
eval $todo
todo=${todoPrefix}"tb_core_platform_fund_record -t -x -w "'"id=(SELECT MAX(id) FROM tb_core_platform_fund_record WHERE status='"'SUCCESSFUL'"' AND platform_name='"'PLATFORM_C'"')"'">${filePath}/tb_core_platform_fund_record-C.sql"
echo "Commond is executing: "${todo}
eval $todo

cd $1
#cd ..
#folder=`echo ${filePath}|awk -F/ 'OFS="/"{print $NF}'`
if [ -f "./sql.tar.gz" ]; then
  rm -rf ./sql.tar.gz
fi
tar -zcvf ./sql.tar.gz ./sql
chmod 777 ./sql.tar.gz
echo "Successfully Exported!!!"
