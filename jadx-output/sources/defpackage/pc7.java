package defpackage;

/* loaded from: classes2.dex */
public abstract class pc7<T> extends mb7<T> {
    public final ic7 w() {
        ti7 ti7Var = new ti7();
        x(ti7Var);
        return ti7Var.e;
    }

    public abstract void x(tc7<? super ic7> tc7Var);

    /* JADX WARN: Multi-variable type inference failed */
    public mb7<T> y() {
        hf7 hf7Var;
        if (this instanceof if7) {
            if7 if7Var = (if7) this;
            hf7Var = new hf7(if7Var.h(), if7Var.c());
        } else {
            hf7Var = this;
        }
        return new kf7(hf7Var);
    }
}
