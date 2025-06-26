package defpackage;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class rm1 implements vs2 {
    public static final vs2 a = new rm1();

    @Override // defpackage.vs2
    public final Object apply(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (h70 h70Var : (List) obj) {
            if (h70Var != null) {
                arrayList.add(h70Var);
            }
        }
        return arrayList;
    }
}
