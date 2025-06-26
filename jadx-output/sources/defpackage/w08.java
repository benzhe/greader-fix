package defpackage;

/* loaded from: classes2.dex */
public final class w08 extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w08(String str, Exception exc) {
        super(str, exc);
        im7.e(str, "msg");
        im7.e(exc, "parent");
    }
}
