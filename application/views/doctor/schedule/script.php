<script>
    $(document).ready(function () {
        $("#addMore").click(function () {
            var row = "<?php $r =
                <<<END
            <tr>
                                <td>
                                    <div class="form-group">
                                        <input type="date" class="form-control" onchange="checkDate(this)"
                                               name="schedule[__name__][date]" required>
                                    </div>
                                </td>
                                <td>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="schedule[__name__][remark]"
                                               placeholder="Enter remark">
                                    </div>
                                </td>
                                <td>
                                    <button onclick="removeItem(this)" class="btn btn-danger btn-sm"><span
                                                class="fa fa-trash-o"></span>
                                    </button>
                                </td>
                            </tr>

END;
                echo(htmlspecialchars(str_replace("\r", '', str_replace("\n", '', $r))));
                ?>";
            var count = $('#mytbl > tbody > tr').length;

            row = row.replace(/__name__/g, count);

            $('#mytbl tbody').append($("<div/>").html(row).text());
        });
    });

    function checkDate(select) {
        var input_date = new Date($(select).val());
        var today_date = new Date("<?=date("Y-m-d")?>");

        if (today_date > input_date) {
            $(select).val("");
        }
    }

    function removeItem(btn) {
        $(btn).parent().parent().remove();
    }
</script>