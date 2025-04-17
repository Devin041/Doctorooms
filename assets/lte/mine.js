function conformDel(aa, event)
{
//alert('sd');
    event.preventDefault();
    swal({
        title: "Are you sure?",
        text: "Once deleted, you will not be able to recover this file!",
        icon: "error",
        buttons: true,
        dangerMode: true,
    })
            .then((willDelete) => {
                if (willDelete) {
                    window.location = $(aa).attr('href');
                } else {
                    //swal("Your imaginary file is safe!");
                }
            });
    return false;
}

