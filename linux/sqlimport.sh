todo="mysql -h$1 -P$2 -u$3 -p$4 -e \"USE $5;"
filePath=$6
filePath=`echo ${filePath}|awk -F/ 'OFS="/"{$NF="";print}'`
cd ${filePath}
if [ -d "./sql" ]; then
  rm -rf ./sql
fi
tar -zxvf $6
filePath=${filePath}"sql"
echo ${filePath}
todo=${todo}"SOURCE ${filePath}/core.sql;"
todo=${todo}"SOURCE ${filePath}/tables-with-user_id.sql;"
todo=${todo}"SOURCE ${filePath}/tb_asset_invest_repayment_detail.sql;"
todo=${todo}"SOURCE ${filePath}/tb_core_certificate_record.sql;"
todo=${todo}"SOURCE ${filePath}/tb_core_operation_record.sql;"
todo=${todo}"SOURCE ${filePath}/tb_core_repay_download_record.sql;"
todo=${todo}"SOURCE ${filePath}/tb_core_file.sql;"
todo=${todo}"SOURCE ${filePath}/tb_push_message.sql;"
todo=${todo}"SOURCE ${filePath}/tb_uplan_income.sql;"
todo=${todo}"SOURCE ${filePath}/tb_rmbbox_invest_repayment.sql;"
todo=${todo}"SOURCE ${filePath}/tb_claim_repayment.sql;"
todo=${todo}"SOURCE ${filePath}/guarantee-user.sql;"
todo=${todo}"SOURCE ${filePath}/guarantee-user-fund-record.sql;"
todo=${todo}"SOURCE ${filePath}/tb_core_platform_fund_record-A.sql;"
todo=${todo}"SOURCE ${filePath}/tb_core_platform_fund_record-B.sql;"
todo=${todo}"SOURCE ${filePath}/tb_core_platform_fund_record-C.sql;"
todo=${todo}"\""
echo "Commond is executing: "${todo}
eval $todo
echo "Successfully Imported!!!"
