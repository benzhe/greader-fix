package defpackage;

import com.google.firebase.Timestamp;
import com.google.firebase.firestore.FirebaseFirestore;
import defpackage.bd6;
import defpackage.qx5;
import defpackage.uo5;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class np5 {
    public final FirebaseFirestore a;
    public final uo5.a b;

    public np5(FirebaseFirestore firebaseFirestore, uo5.a aVar) {
        this.a = firebaseFirestore;
        this.b = aVar;
    }

    public Object a(bd6 bd6Var) {
        bd6 bd6VarI0;
        switch (lu5.l(bd6Var)) {
            case 0:
                return null;
            case 1:
                return Boolean.valueOf(bd6Var.O());
            case 2:
                return bd6Var.Y().equals(bd6.c.INTEGER_VALUE) ? Long.valueOf(bd6Var.T()) : Double.valueOf(bd6Var.R());
            case 3:
                wk6 wk6VarX = bd6Var.X();
                return new Timestamp(wk6VarX.G(), wk6VarX.F());
            case 4:
                int iOrdinal = this.b.ordinal();
                if (iOrdinal == 1) {
                    wk6 wk6VarG0 = c50.g0(bd6Var);
                    return new Timestamp(wk6VarG0.G(), wk6VarG0.F());
                }
                if (iOrdinal == 2 && (bd6VarI0 = c50.i0(bd6Var)) != null) {
                    return a(bd6VarI0);
                }
                return null;
            case 5:
                return bd6Var.W();
            case 6:
                qi6 qi6VarP = bd6Var.P();
                c50.B(qi6VarP, "Provided ByteString must not be null.");
                return new oo5(qi6VarP);
            case 7:
                iu5 iu5VarN = iu5.N(bd6Var.V());
                bx5.c(iu5VarN.I() >= 3 && iu5VarN.y(0).equals("projects") && iu5VarN.y(2).equals("databases"), "Tried to parse an invalid resource name: %s", iu5VarN);
                wt5 wt5Var = new wt5(iu5VarN.y(1), iu5VarN.y(3));
                bu5 bu5VarK = bu5.k(bd6Var.V());
                wt5 wt5Var2 = this.a.b;
                if (!wt5Var.equals(wt5Var2)) {
                    qx5.a(qx5.a.WARN, "DocumentSnapshot", "Document %s contains a document reference within a different database (%s/%s) which is not supported. It will be treated as a reference in the current database (%s/%s) instead.", bu5VarK.e, wt5Var.e, wt5Var.f, wt5Var2.e, wt5Var2.f);
                }
                return new to5(bu5VarK, this.a);
            case 8:
                return new dp5(bd6Var.S().F(), bd6Var.S().G());
            case 9:
                jc6 jc6VarN = bd6Var.N();
                ArrayList arrayList = new ArrayList(jc6VarN.I());
                Iterator<bd6> it = jc6VarN.i().iterator();
                while (it.hasNext()) {
                    arrayList.add(a(it.next()));
                }
                return arrayList;
            case 10:
                Map<String, bd6> mapF = bd6Var.U().F();
                HashMap map = new HashMap();
                for (Map.Entry<String, bd6> entry : mapF.entrySet()) {
                    map.put(entry.getKey(), a(entry.getValue()));
                }
                return map;
            default:
                StringBuilder sbZ = jo.z("Unknown value type: ");
                sbZ.append(bd6Var.Y());
                bx5.a(sbZ.toString(), new Object[0]);
                throw null;
        }
    }
}
