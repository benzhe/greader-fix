package defpackage;

import java.util.Comparator;

/* loaded from: classes.dex */
public final class hn3 implements Comparator<nn3> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(nn3 nn3Var, nn3 nn3Var2) {
        nn3 nn3Var3 = nn3Var;
        nn3 nn3Var4 = nn3Var2;
        int i = nn3Var3.c - nn3Var4.c;
        return i != 0 ? i : (int) (nn3Var3.a - nn3Var4.a);
    }
}
