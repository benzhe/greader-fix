package defpackage;

/* loaded from: classes2.dex */
public class sx6 extends hz6 {
    public static volatile sx6 f;

    public static sx6 n() {
        if (f == null) {
            synchronized (hz6.class) {
                if (f == null) {
                    f = new sx6();
                }
            }
        }
        return f;
    }
}
