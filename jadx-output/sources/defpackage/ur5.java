package defpackage;

import com.google.firebase.Timestamp;
import defpackage.yt5;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ur5 {
    public final ow5 a;

    public ur5(ow5 ow5Var) {
        this.a = ow5Var;
    }

    public fu5 a(cv5 cv5Var) {
        int iOrdinal = cv5Var.H().ordinal();
        if (iOrdinal == 0) {
            dv5 dv5VarJ = cv5Var.J();
            return new gu5(this.a.a(dv5VarJ.F()), this.a.e(dv5VarJ.G()), cv5Var.I());
        }
        if (iOrdinal == 1) {
            mc6 mc6VarG = cv5Var.G();
            return new yt5(this.a.a(mc6VarG.H()), this.a.e(mc6VarG.I()), hu5.b(mc6VarG.G()), cv5Var.I() ? yt5.a.COMMITTED_MUTATIONS : yt5.a.SYNCED);
        }
        if (iOrdinal == 2) {
            fv5 fv5VarK = cv5Var.K();
            return new ku5(this.a.a(fv5VarK.F()), this.a.e(fv5VarK.G()));
        }
        bx5.a("Unknown MaybeDocument %s", cv5Var);
        throw null;
    }

    public ru5 b(gv5 gv5Var) {
        int I = gv5Var.I();
        ow5 ow5Var = this.a;
        wk6 wk6VarJ = gv5Var.J();
        Objects.requireNonNull(ow5Var);
        Timestamp timestamp = new Timestamp(wk6VarJ.G(), wk6VarJ.F());
        int iH = gv5Var.H();
        ArrayList arrayList = new ArrayList(iH);
        for (int i = 0; i < iH; i++) {
            arrayList.add(this.a.b(gv5Var.G(i)));
        }
        int iL = gv5Var.L();
        ArrayList arrayList2 = new ArrayList(iL);
        for (int i2 = 0; i2 < iL; i2++) {
            arrayList2.add(this.a.b(gv5Var.K(i2)));
        }
        return new ru5(I, timestamp, arrayList, arrayList2);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x028b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.ut5 c(defpackage.ev5 r24) {
        /*
            Method dump skipped, instructions count: 732
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ur5.c(ev5):ut5");
    }
}
