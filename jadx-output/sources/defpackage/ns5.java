package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public class ns5 implements sr5 {
    public final a a = new a();

    public static class a {
        public final HashMap<String, HashSet<iu5>> a = new HashMap<>();

        public boolean a(iu5 iu5Var) {
            bx5.c(iu5Var.I() % 2 == 1, "Expected a collection path.", new Object[0]);
            String strX = iu5Var.x();
            iu5 iu5VarL = iu5Var.L();
            HashSet<iu5> hashSet = this.a.get(strX);
            if (hashSet == null) {
                hashSet = new HashSet<>();
                this.a.put(strX, hashSet);
            }
            return hashSet.add(iu5VarL);
        }
    }

    @Override // defpackage.sr5
    public List<iu5> a(String str) {
        HashSet<iu5> hashSet = this.a.a.get(str);
        return hashSet != null ? new ArrayList(hashSet) : Collections.emptyList();
    }
}
