local grafana = import "grafonnet/grafana.libsonnet";
local dashboard = grafana.dashboard;

{
    simple: dashboard.new("test"),
    adv: dashboard.new(
        "adv",
        editable=true,
        style="light",
        tags=["foo"],
        time_from="6h",
        time_to="then",
        timezone="cet",
        refresh="1m",
        timepicker="hi",
        hideControls=true,
    ),
}
