package defpackage;

/* loaded from: classes2.dex */
public class ux6 extends hz6 {
    public static volatile ux6 f;

    public static ux6 n() {
        if (f == null) {
            synchronized (hz6.class) {
                if (f == null) {
                    f = new ux6();
                }
            }
        }
        return f;
    }
}
