var contextPath = $("#contextPath").val();

function setPaises(idcontinente, borrar){
    if(borrar==true){
        $("#pais").empty();
    }
    $.ajax({
        method: "post",
        url: contextPath + "Welcome/getPaises",
        data:{
            idcontinente: idcontinente
        },
        dataType: "json",
        error: function(){
            alert("error");
        },
        success: function(data){
            $.each(data, function(i, val){
                $("#pais").append("<option value='" + val.id+"'>"+val.nombre+"</option>");
            });
            $("#pais").selectpicker("refresh");
        }
    });
}

function setCapitales(idpaiss, borrar){
    if(borrar==true){
        $("#capital").empty();
    }
    $.ajax({
        method: "post",
        url: contextPath + "Welcome/getCapitales",
        data:{
            idpaiss: idpaiss
        },
        dataType: "json",
        error: function(){
            alert("error");
        },
        success: function(data){
            $.each(data, function(i, val){
                $("#capital").append("<option value='" + val.id+"'>"+val.nombre+"</option>");
            });
            $("#capital").selectpicker("refresh");
        }
    });
}
