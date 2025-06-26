package defpackage;

import com.noinnion.android.greader.ReaderApp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class en6 extends jm7 implements pl7<l08, yj7> {
    public final /* synthetic */ ReaderApp e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public en6(ReaderApp readerApp) {
        super(1);
        this.e = readerApp;
    }

    @Override // defpackage.pl7
    public yj7 invoke(l08 l08Var) throws u08 {
        l08 l08Var2 = l08Var;
        im7.e(l08Var2, "$receiver");
        ReaderApp readerApp = this.e;
        im7.e(l08Var2, "$this$androidContext");
        im7.e(readerApp, "androidContext");
        h18 h18Var = l08Var2.a.b;
        g18 g18Var = g18.INFO;
        if (h18Var.c(g18Var)) {
            h18 h18Var2 = l08Var2.a.b;
            Objects.requireNonNull(h18Var2);
            im7.e("[init] declare Android Context", "msg");
            h18Var2.b(g18Var, "[init] declare Android Context");
        }
        k08 k08Var = l08Var2.a;
        j08 j08Var = new j08(readerApp);
        int iIntValue = 0;
        k08.b(k08Var, n56.r1(kt7.n(false, false, j08Var, 3)), false, 2);
        f fVar = f.e;
        List<i18> list = f.d;
        im7.e(list, "modules");
        if (l08Var2.a.b.c(g18Var)) {
            double dM = kt7.m(new m08(l08Var2, list));
            Collection<p18> collectionValues = l08Var2.a.a.a.values();
            im7.d(collectionValues, "_scopeDefinitions.values");
            ArrayList arrayList = new ArrayList(n56.x(collectionValues, 10));
            Iterator<T> it = collectionValues.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((p18) it.next()).a.size()));
            }
            im7.e(arrayList, "$this$sum");
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                iIntValue += ((Number) it2.next()).intValue();
            }
            h18 h18Var3 = l08Var2.a.b;
            String str = "loaded " + iIntValue + " definitions - " + dM + " ms";
            Objects.requireNonNull(h18Var3);
            im7.e(str, "msg");
            h18Var3.b(g18Var, str);
        } else {
            k08.b(l08Var2.a, list, false, 2);
        }
        return yj7.a;
    }
}
