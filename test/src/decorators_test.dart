part of fp_test;

testDecorators() {
  group("[decorators]", (){
    group("[anyArgs]", () {
      test("ignores all args", () {
        final c = () => "RES";
        final anyArgsC = _.anyArgs(c);

        expect(anyArgsC(1,2,3), equals("RES"));
        expect(anyArgsC(one: 'one', two: 'two'), equals("RES"));
      });
    });

    group("[log]", () {
      test("example", () {
        plus(a, b) => a + b;

        final tappedArgs = [];
        final tappedPlus = _.log((a,b) => tappedArgs..add(a)..add(b), plus);

        expect(tappedPlus(1,2), equals(3));
        expect(tappedArgs, equals([1,2]));
      });
    });
  });
}