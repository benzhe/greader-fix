package defpackage;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class bn1 implements vs2 {
    public static final vs2 a = new bn1();

    @Override // defpackage.vs2
    public final Object apply(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (dn1 dn1Var : (List) obj) {
            if (dn1Var != null) {
                arrayList.add(dn1Var);
            }
        }
        return arrayList;
    }
}
