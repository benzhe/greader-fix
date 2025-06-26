package defpackage;

import com.google.firebase.Timestamp;
import defpackage.bd6;
import defpackage.wc6;
import defpackage.wk6;

/* loaded from: classes.dex */
public class xu5 implements av5 {
    public static final xu5 a = new xu5();

    @Override // defpackage.av5
    public bd6 a(bd6 bd6Var, Timestamp timestamp) {
        bd6.b bVarZ = bd6.Z();
        bVarZ.o();
        bd6.D((bd6) bVarZ.f, "server_timestamp");
        bd6 bd6VarL = bVarZ.l();
        bd6.b bVarZ2 = bd6.Z();
        wk6.b bVarH = wk6.H();
        bVarH.s(timestamp.e);
        bVarH.r(timestamp.f);
        bVarZ2.o();
        bd6.C((bd6) bVarZ2.f, bVarH.l());
        bd6 bd6VarL2 = bVarZ2.l();
        wc6.b bVarI = wc6.I();
        bVarI.r("__type__", bd6VarL);
        bVarI.r("__local_write_time__", bd6VarL2);
        if (bd6Var != null) {
            bVarI.r("__previous_value__", bd6Var);
        }
        bd6.b bVarZ3 = bd6.Z();
        bVarZ3.u(bVarI);
        return bVarZ3.l();
    }

    @Override // defpackage.av5
    public bd6 b(bd6 bd6Var) {
        return null;
    }

    @Override // defpackage.av5
    public bd6 c(bd6 bd6Var, bd6 bd6Var2) {
        return bd6Var2;
    }
}
