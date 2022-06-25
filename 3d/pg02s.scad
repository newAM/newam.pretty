CASE = [21.8, 9.3, 11.2 - 0.5];
STANDOFF = [0.5, CASE[1], 0.5];
PIN = [0.5, 0.25, 3.7];

CASE_COLOR = "black";
PIN_COLOR = "silver";

union() {
    color(CASE_COLOR) {
        cube(CASE);
        for (i = [0, 1]) {
            translate([(CASE[0] - STANDOFF[0]) * i, 0, -STANDOFF[2]]) {
                cube(STANDOFF);
            }
        }
    }
    for (i = [0, 1, 2, 4, 5, 6, 7]) {
        translate([2 + 2.54 * i - PIN[0] / 2, CASE[1] - 2.7 - PIN[1] / 2, -PIN[2]]) {
            color(PIN_COLOR) {
                cube(PIN);
            }
        }
    }
}
