package defpackage;

/* loaded from: classes2.dex */
public enum mi7 implements kd7<Object> {
    INSTANCE;

    @Override // defpackage.y38
    public void cancel() {
    }

    @Override // defpackage.nd7
    public void clear() {
    }

    @Override // defpackage.jd7
    public int i(int i) {
        return i & 2;
    }

    @Override // defpackage.nd7
    public boolean isEmpty() {
        return true;
    }

    @Override // defpackage.y38
    public void l(long j) {
        pi7.y(j);
    }

    @Override // defpackage.nd7
    public boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // defpackage.nd7
    public Object poll() {
        return null;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "EmptySubscription";
    }
}
