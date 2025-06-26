package defpackage;

/* loaded from: classes.dex */
public class oc implements dd {
    public ed e = null;

    @Override // defpackage.dd
    public ad getLifecycle() {
        if (this.e == null) {
            this.e = new ed(this);
        }
        return this.e;
    }
}
