package defpackage;

/* loaded from: classes.dex */
public class ue5 extends Exception {
    @Deprecated
    public ue5() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ue5(String str) {
        super(str);
        bi.h(str, "Detail message must not be empty");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ue5(String str, Throwable th) {
        super(str, th);
        bi.h(str, "Detail message must not be empty");
    }
}
