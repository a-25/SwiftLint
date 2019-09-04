internal struct ColonRuleExamples {
    static let nonTriggeringExamples = [
        "let abc: Void\n",
        "let abc: [Void: Void]\n",
        "let abc: (Void, Void)\n",
        "let abc: ([Void], String, Int)\n",
        "let abc: [([Void], String, Int)]\n",
        "let abc: String=\"def\"\n",
        "let abc: Int=0\n",
        "let abc: Enum=Enum.Value\n",
        "func abc(def: Void) {}\n",
        "func abc(def: Void, ghi: Void) {}\n",
        "let abc: String = \"abc:\"",
        "let abc = [Void: Void]()\n",
        "let abc = [1: [3: 2], 3: 4]\n",
        "let abc = [\"string\": \"string\"]\n",
        "let abc = [\"string:string\": \"string\"]\n",
        "let abc: [String: Int]\n",
        "func foo(bar: [String: Int]) {}\n",
        "func foo() -> [String: Int] { return [:] }\n",
        "let abc: Any\n",
        "let abc: [Any: Int]\n",
        "let abc: [String: Any]\n",
        "class Foo: Bar {}\n",
        "class Foo<T>: Bar {}\n",
        "class Foo<T: Equatable>: Bar {}\n",
        "class Foo<T, U>: Bar {}\n",
        "class Foo<T: Equatable> {}\n",
        "switch foo {\n" +
            "case .bar:\n" +
            "    _ = something()\n" +
        "}\n",
        "object.method(x: 5, y: \"string\")\n",
        "object.method(x: 5, y:\n" +
        "              \"string\")",
        "object.method(5, y: \"string\")\n",
        "func abc() { def(ghi: jkl) }",
        "func abc(def: Void) { ghi(jkl: mno) }",
        "class ABC { let def = ghi(jkl: mno) } }",
        "func foo() { let dict = [1: 1] }",
        "let aaa = Self.bbb ? Self.ccc : Self.ddd else {\n" +
            "return nil\n" +
        "}\n"
    ]

    static let triggeringExamples = [
        "let ↓abc:Void\n",
        "let ↓abc:  Void\n",
        "let ↓abc :Void\n",
        "let ↓abc : Void\n",
        "let ↓abc : [Void: Void]\n",
        "let ↓abc : (Void, String, Int)\n",
        "let ↓abc : ([Void], String, Int)\n",
        "let ↓abc : [([Void], String, Int)]\n",
        "let ↓abc:  (Void, String, Int)\n",
        "let ↓abc:  ([Void], String, Int)\n",
        "let ↓abc:  [([Void], String, Int)]\n",
        "let ↓abc :String=\"def\"\n",
        "let ↓abc :Int=0\n",
        "let ↓abc :Int = 0\n",
        "let ↓abc:Int=0\n",
        "let ↓abc:Int = 0\n",
        "let ↓abc:Enum=Enum.Value\n",
        "func abc(↓def:Void) {}\n",
        "func abc(↓def:  Void) {}\n",
        "func abc(↓def :Void) {}\n",
        "func abc(↓def : Void) {}\n",
        "func abc(def: Void, ↓ghi :Void) {}\n",
        "let abc = [Void↓:Void]()\n",
        "let abc = [Void↓ : Void]()\n",
        "let abc = [Void↓:  Void]()\n",
        "let abc = [Void↓ :  Void]()\n",
        "let abc = [1: [3↓ : 2], 3: 4]\n",
        "let abc = [1: [3↓ : 2], 3↓:  4]\n",
        "let abc: [↓String : Int]\n",
        "let abc: [↓String:Int]\n",
        "func foo(bar: [↓String : Int]) {}\n",
        "func foo(bar: [↓String:Int]) {}\n",
        "func foo() -> [↓String : Int] { return [:] }\n",
        "func foo() -> [↓String:Int] { return [:] }\n",
        "let ↓abc : Any\n",
        "let abc: [↓Any : Int]\n",
        "let abc: [↓String : Any]\n",
        "class ↓Foo : Bar {}\n",
        "class ↓Foo:Bar {}\n",
        "class ↓Foo<T> : Bar {}\n",
        "class ↓Foo<T>:Bar {}\n",
        "class ↓Foo<T, U>:Bar {}\n",
        "class ↓Foo<T: Equatable>:Bar {}\n",
        "class Foo<↓T:Equatable> {}\n",
        "class Foo<↓T : Equatable> {}\n",
        "object.method(x: 5, y↓ : \"string\")\n",
        "object.method(x↓:5, y: \"string\")\n",
        "object.method(x↓:  5, y: \"string\")\n",
        "func abc() { def(ghi↓:jkl) }",
        "func abc(def: Void) { ghi(jkl↓:mno) }",
        "class ABC { let def = ghi(jkl↓:mno) } }",
        "func foo() { let dict = [1↓ : 1] }",
        "func foo(\n" +
            "bar: String,\n" +
            "baz: String,\n" +
            "↓completion :@escaping (_ error: Error?) -> Void\n" +
        ") {}",
        "func foo(\n" +
            "bar: String,\n" +
            "baz: String,\n" +
            "↓completion :(_ error: Error?) -> Void\n" +
        ") {}"
    ]

    static let corrections = [
        "let ↓abc:Void\n": "let abc: Void\n",
        "let ↓abc:  Void\n": "let abc: Void\n",
        "let ↓abc :Void\n": "let abc: Void\n",
        "let ↓abc : Void\n": "let abc: Void\n",
        "let ↓abc : [Void: Void]\n": "let abc: [Void: Void]\n",
        "let ↓abc : (Void, String, Int)\n": "let abc: (Void, String, Int)\n",
        "let ↓abc : ([Void], String, Int)\n": "let abc: ([Void], String, Int)\n",
        "let ↓abc : [([Void], String, Int)]\n": "let abc: [([Void], String, Int)]\n",
        "let ↓abc:  (Void, String, Int)\n": "let abc: (Void, String, Int)\n",
        "let ↓abc:  ([Void], String, Int)\n": "let abc: ([Void], String, Int)\n",
        "let ↓abc:  [([Void], String, Int)]\n": "let abc: [([Void], String, Int)]\n",
        "let ↓abc :String=\"def\"\n": "let abc: String=\"def\"\n",
        "let ↓abc :Int=0\n": "let abc: Int=0\n",
        "let ↓abc :Int = 0\n": "let abc: Int = 0\n",
        "let ↓abc:Int=0\n": "let abc: Int=0\n",
        "let ↓abc:Int = 0\n": "let abc: Int = 0\n",
        "let ↓abc:Enum=Enum.Value\n": "let abc: Enum=Enum.Value\n",
        "func abc(↓def:Void) {}\n": "func abc(def: Void) {}\n",
        "func abc(↓def:  Void) {}\n": "func abc(def: Void) {}\n",
        "func abc(↓def :Void) {}\n": "func abc(def: Void) {}\n",
        "func abc(↓def : Void) {}\n": "func abc(def: Void) {}\n",
        "func abc(def: Void, ↓ghi :Void) {}\n": "func abc(def: Void, ghi: Void) {}\n",
        "let abc = [Void↓:Void]()\n": "let abc = [Void: Void]()\n",
        "let abc = [Void↓ : Void]()\n": "let abc = [Void: Void]()\n",
        "let abc = [Void↓:  Void]()\n": "let abc = [Void: Void]()\n",
        "let abc = [Void↓ :  Void]()\n": "let abc = [Void: Void]()\n",
        "let abc = [1: [3↓ : 2], 3: 4]\n": "let abc = [1: [3: 2], 3: 4]\n",
        "let abc = [1: [3↓ : 2], 3↓:  4]\n": "let abc = [1: [3: 2], 3: 4]\n",
        "let abc: [↓String : Int]\n": "let abc: [String: Int]\n",
        "let abc: [↓String:Int]\n": "let abc: [String: Int]\n",
        "func foo(bar: [↓String : Int]) {}\n": "func foo(bar: [String: Int]) {}\n",
        "func foo(bar: [↓String:Int]) {}\n": "func foo(bar: [String: Int]) {}\n",
        "func foo() -> [↓String : Int] { return [:] }\n": "func foo() -> [String: Int] { return [:] }\n",
        "func foo() -> [↓String:Int] { return [:] }\n": "func foo() -> [String: Int] { return [:] }\n",
        "let ↓abc : Any\n": "let abc: Any\n",
        "let abc: [↓Any : Int]\n": "let abc: [Any: Int]\n",
        "let abc: [↓String : Any]\n": "let abc: [String: Any]\n",
        "class ↓Foo : Bar {}\n": "class Foo: Bar {}\n",
        "class ↓Foo:Bar {}\n": "class Foo: Bar {}\n",
        "class ↓Foo<T> : Bar {}\n": "class Foo<T>: Bar {}\n",
        "class ↓Foo<T>:Bar {}\n": "class Foo<T>: Bar {}\n",
        "class ↓Foo<T, U>:Bar {}\n": "class Foo<T, U>: Bar {}\n",
        "class ↓Foo<T: Equatable>:Bar {}\n": "class Foo<T: Equatable>: Bar {}\n",
        "class Foo<↓T:Equatable> {}\n": "class Foo<T: Equatable> {}\n",
        "class Foo<↓T : Equatable> {}\n": "class Foo<T: Equatable> {}\n",
        "object.method(x: 5, y↓ : \"string\")\n": "object.method(x: 5, y: \"string\")\n",
        "object.method(x↓:5, y: \"string\")\n": "object.method(x: 5, y: \"string\")\n",
        "object.method(x↓:  5, y: \"string\")\n": "object.method(x: 5, y: \"string\")\n",
        "func abc() { def(ghi↓:jkl) }": "func abc() { def(ghi: jkl) }",
        "func abc(def: Void) { ghi(jkl↓:mno) }": "func abc(def: Void) { ghi(jkl: mno) }",
        "class ABC { let def = ghi(jkl↓:mno) } }": "class ABC { let def = ghi(jkl: mno) } }",
        "func foo() { let dict = [1↓ : 1] }": "func foo() { let dict = [1: 1] }",
        "class Foo {\n    #if false\n    #else\n        let bar = [\"key\"↓   : \"value\"]\n    #endif\n}":
        "class Foo {\n    #if false\n    #else\n        let bar = [\"key\": \"value\"]\n    #endif\n}",
        "func foo(\n" +
            "bar: String,\n" +
            "baz: String,\n" +
            "↓completion :@escaping (_ error: Error?) -> Void\n" +
        ") {}":
        "func foo(\n" +
                "bar: String,\n" +
                "baz: String,\n" +
                "completion: @escaping (_ error: Error?) -> Void\n" +
        ") {}",
        "func foo(\n" +
            "bar: String,\n" +
            "baz: String,\n" +
            "↓completion :(_ error: Error?) -> Void\n" +
        ") {}":
        "func foo(\n" +
                "bar: String,\n" +
                "baz: String,\n" +
                "completion: (_ error: Error?) -> Void\n" +
        ") {}"
    ]
}
