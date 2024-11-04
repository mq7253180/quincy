<template>
  <div class="app-container">
    <div class="el-table el-table--fit el-table--border el-table--enable-row-hover el-table--enable-row-transition el-table--medium" style="width: 100%;">
      <div class="el-table__header-wrapper">
        <table v-loading="listLoading" cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 1170px;">
          <thead class="">
            <tr>
              <th colspan="1" rowspan="1" class="el-table_3_column_12 is-center ascending is-leaf is-sortable" style="cursor: col-resize;">
                <div class="cell">
                  ID
                  <span class="caret-wrapper">
                    <i class="sort-caret ascending" />
                    <i class="sort-caret descending" />
                  </span>
                </div>
              </th>
              <th colspan="1" rowspan="1" class="el-table_3_column_13 is-center is-leaf">
                <div class="cell">EEE</div>
              </th>
              <th colspan="1" rowspan="1" class="el-table_3_column_14 is-center is-leaf">
                <div class="cell">FFF</div>
              </th>
              <th v-for="dynamicField in dynamicFields" :key="dynamicField.index" colspan="1" rowspan="1" class="el-table_3_column_15 is-center is-leaf">
                <div class="cell">{{ dynamicField.name }}</div>
              </th>
            </tr>
          </thead>
        </table>
      </div>
      <div class="el-table__body-wrapper is-scrolling-none">
        <table cellspacing="0" cellpadding="0" border="0" class="el-table__body" style="width: 1170px;">
          <tbody>
            <tr v-for="row in list" :key="row.id" class="el-table__row">
              <td rowspan="1" colspan="1" class="el-table_3_column_12 is-center ascending">
                <div class="cell">
                  <span>{{ row.id }}</span>
                </div>
              </td>
              <td rowspan="1" colspan="1" class="el-table_3_column_13">
                <div class="cell">
                  <span class="link-type">{{ row.eee }}</span>
                </div>
              </td>
              <td rowspan="1" colspan="1" class="el-table_3_column_14">
                <div class="cell">
                  <span>{{ row.fff }}</span>
                </div>
              </td>
              <td v-for="dynamicField in row.dynamicFields" :key="dynamicField.index" rowspan="1" colspan="1" :class="dynamicField.clazz">
                <div class="cell">
                  <span>{{ dynamicField.value }}</span>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>

<script>
import { ajax } from '@/utils/quincy'

export default {
  name: 'DynamicColumns',
  data() {
    return {
      list: null,
      listLoading: true,
      dynamicFields: null
    }
  },
  created() {
    this.getList()
  },
  methods: {
    getList() {
      this.listLoading = true
      ajax({
        url: '/xxx/ddd/10/0',
        method: 'GET',
        responseType: 'JSON',
        // data: {},
        success: (data) => {
          this.list = data.result
          this.dynamicFields = data.dynamicFields
        },
        finaly: () => {
          this.listLoading = false
        }
      }, this)
    },
    sortChange(data) {
      const { prop, order } = data
      if (prop === 'id') {
        this.sortByID(order)
      }
    }
  }
}
</script>
