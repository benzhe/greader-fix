package defpackage;

import java.util.Objects;
import java.util.concurrent.CancellationException;

/* loaded from: classes2.dex */
public final class ro7 extends aq7<yp7> {
    public final po7<?> i;

    public ro7(yp7 yp7Var, po7<?> po7Var) {
        super(yp7Var);
        this.i = po7Var;
    }

    @Override // defpackage.pl7
    public yj7 invoke(Throwable th) {
        po7<?> po7Var = this.i;
        J j = this.h;
        Objects.requireNonNull(po7Var);
        CancellationException cancellationExceptionG = j.g();
        boolean zJ = false;
        if (po7Var.g == 0) {
            pk7<?> pk7Var = po7Var.i;
            if (!(pk7Var instanceof hp7)) {
                pk7Var = null;
            }
            hp7 hp7Var = (hp7) pk7Var;
            if (hp7Var != null) {
                zJ = hp7Var.j(cancellationExceptionG);
            }
        }
        if (!zJ) {
            po7Var.g(cancellationExceptionG);
            po7Var.h();
        }
        return yj7.a;
    }

    @Override // defpackage.sq7
    public String toString() {
        StringBuilder sbZ = jo.z("ChildContinuation[");
        sbZ.append(this.i);
        sbZ.append(']');
        return sbZ.toString();
    }
}
