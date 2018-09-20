$(document).ready(function() {
    init();
});

var example;
//加载初始化数据
function initData(){
    example =
    $('#dt-table').DataTable({
        "searching": false,
        "processing": false,
        "serverSide" : true,
        "ajax": {
            "url" : "/orderThirdLevels/"+getParam(),
            "type":"get",
        },
        "dom": "<'dt-toolbar'r>t<'dt-toolbar-footer'<'col-sm-10 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-10' p v>>",
        "columns": [
            {"data" : "id", "defaultContent" : ""},
            {"data" : "firstLevelId", "defaultContent" : ""},
            {"data" : "userCode", "defaultContent" : ""},
            {"data" : "telephone", "defaultContent" : ""},
            {"data" : "serialNumber", "defaultContent" : ""},
            {"data" : "pSerialNumber", "defaultContent" : ""},
            {"data" : "productOriginPrice", "defaultContent" : ""},
            {"data" : "productSalePrice", "defaultContent" : ""},
            {"data" : "orderStatus", "defaultContent" : ""},
            {"data" : "errorCode", "defaultContent" : ""},
            {"data" : "productTypeId", "defaultContent" : ""},
            {"data" : "productTypeName", "defaultContent" : ""},
            {"data" : "productName", "defaultContent" : ""},
            {"data" : "productCode", "defaultContent" : ""},
            {"data" : "productImgUrl", "defaultContent" : ""},
            {"data" : "productDesc", "defaultContent" : ""},
            {"data" : "buyNum", "defaultContent" : ""},
            {"data" : "activityName", "defaultContent" : ""},
            {"data" : "mktInvId", "defaultContent" : ""},
            {"data" : "dataState", "defaultContent" : ""},
            {"data" : "ext1", "defaultContent" : ""},
            {"data" : "ext2", "defaultContent" : ""},
            {"data" : "ext3", "defaultContent" : ""},
            {"data" : "ext4", "defaultContent" : ""},
            {"data" : "createTime", "defaultContent" : ""},
            {"data" : "updateTime", "defaultContent" : ""},
            {
                "data": "",
                "defaultContent": "",
                "orderable":false,
                "render": function (data, type, row) {
                    var id = row['id'];
                    var href = "updateOrderFirstLevel.html?id=" + id;
                    var edit = buttonEdit(href, "", pers);
                    var del = buttonDel(id, "", pers);
                    return edit + del + about;
                }
            },

        ],
        "iDisplayLength": 10,
        "order": [[ 0, "asc" ]]
    } );
}

function getParam(){
    C1=window.location.href.split("?")[1];
    C2=C1.split("=")[1];
    return C2;
}

