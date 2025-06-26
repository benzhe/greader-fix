package defpackage;

/* loaded from: classes2.dex */
public class gw6 extends Exception {

    public static class a extends gw6 {
    }

    public static class b extends gw6 {
        public b(Throwable th) {
            super(th);
        }

        public b(String str) {
            super(str);
        }
    }

    public gw6() {
    }

    public gw6(String str) {
        super(str);
    }

    public gw6(Throwable th) {
        super(th);
    }

    public gw6(String str, Throwable th) {
        super(str, th);
    }
}
