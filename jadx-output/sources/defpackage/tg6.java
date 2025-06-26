package defpackage;

/* loaded from: classes.dex */
public class tg6 extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tg6(String str, int i) {
        super(str);
        bi.h(str, "Provided message must not be empty.");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tg6(String str, int i, Throwable th) {
        super(str, th);
        bi.h(str, "Provided message must not be empty.");
    }
}
