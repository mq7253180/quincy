<template>
  <div class="app-container">
    <table v-loading="listLoading" border fit highlight-current-row style="width: 100%;" class="el-table__header" @sort-change="sortChange">
      <tr>
        <td width="150px" align="center">id</td>
        <td width="150px" align="center">eee</td>
        <td width="150px" align="center">fff</td>
        <td v-for="dynamicFieldName in dynamicFieldNames" :key="dynamicFieldName.index" width="150px" align="center">{{ dynamicFieldName }}</td>
      </tr>
      <tr v-for="row in list" :key="row.id">
        <td>{{ row.id }}</td>
        <td>{{ row.eee }}</td>
        <td>{{ row.fff }}</td>
        <td v-for="dynamicField in row.dynamicFields" :key="dynamicField.index">{{ dynamicField.value }}</td>
      </tr>
    </table>
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
      dynamicFieldNames: null
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
        handle: (data) => {
          // alert(JSON.stringify(data))
          this.list = data.result
          this.dynamicFieldNames = data.dynamicFieldNames
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
