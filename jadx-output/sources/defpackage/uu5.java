package defpackage;

import com.google.firebase.Timestamp;
import defpackage.bd6;

/* loaded from: classes.dex */
public class uu5 implements av5 {
    public bd6 a;

    public uu5(bd6 bd6Var) {
        bx5.c(lu5.j(bd6Var), "NumericIncrementTransformOperation expects a NumberValue operand", new Object[0]);
        this.a = bd6Var;
    }

    @Override // defpackage.av5
    public bd6 a(bd6 bd6Var, Timestamp timestamp) {
        long jT;
        bd6 bd6VarB = b(bd6Var);
        if (!lu5.h(bd6VarB) || !lu5.h(this.a)) {
            if (lu5.h(bd6VarB)) {
                double d = d() + bd6VarB.T();
                bd6.b bVarZ = bd6.Z();
                bVarZ.s(d);
                return bVarZ.l();
            }
            bx5.c(lu5.g(bd6VarB), "Expected NumberValue to be of type DoubleValue, but was ", bd6Var.getClass().getCanonicalName());
            double d2 = d() + bd6VarB.R();
            bd6.b bVarZ2 = bd6.Z();
            bVarZ2.s(d2);
            return bVarZ2.l();
        }
        long jT2 = bd6VarB.T();
        if (lu5.g(this.a)) {
            jT = (long) this.a.R();
        } else {
            if (!lu5.h(this.a)) {
                StringBuilder sbZ = jo.z("Expected 'operand' to be of Number type, but was ");
                sbZ.append(this.a.getClass().getCanonicalName());
                bx5.a(sbZ.toString(), new Object[0]);
                throw null;
            }
            jT = this.a.T();
        }
        long j = jT2 + jT;
        if (((jT2 ^ j) & (jT ^ j)) < 0) {
            j = j >= 0 ? Long.MIN_VALUE : Long.MAX_VALUE;
        }
        bd6.b bVarZ3 = bd6.Z();
        bVarZ3.t(j);
        return bVarZ3.l();
    }

    @Override // defpackage.av5
    public bd6 b(bd6 bd6Var) {
        if (lu5.j(bd6Var)) {
            return bd6Var;
        }
        bd6.b bVarZ = bd6.Z();
        bVarZ.t(0L);
        return bVarZ.l();
    }

    @Override // defpackage.av5
    public bd6 c(bd6 bd6Var, bd6 bd6Var2) {
        return bd6Var2;
    }

    public final double d() {
        if (lu5.g(this.a)) {
            return this.a.R();
        }
        if (lu5.h(this.a)) {
            return this.a.T();
        }
        StringBuilder sbZ = jo.z("Expected 'operand' to be of Number type, but was ");
        sbZ.append(this.a.getClass().getCanonicalName());
        bx5.a(sbZ.toString(), new Object[0]);
        throw null;
    }
}
