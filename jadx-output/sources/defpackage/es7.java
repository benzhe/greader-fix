package defpackage;

/* loaded from: classes2.dex */
public class es7 extends is7 {
    public final js7 b;

    public es7(js7 js7Var) {
        im7.f(js7Var, "regEx");
        this.b = js7Var;
    }

    public int f(String str) {
        im7.f(str, "str");
        return new yn7("\\s+").b(str, 0).size();
    }
}
