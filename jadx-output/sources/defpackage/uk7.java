package defpackage;

/* loaded from: classes2.dex */
public final class uk7 implements pk7<Object> {
    public static final uk7 e = new uk7();

    @Override // defpackage.pk7
    public rk7 getContext() {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @Override // defpackage.pk7
    public void resumeWith(Object obj) {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    public String toString() {
        return "This continuation is already complete";
    }
}
