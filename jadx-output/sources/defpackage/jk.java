package defpackage;

import android.os.Build;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class jk {
    public static final String a = vj.e("Schedulers");

    public static void a(pj pjVar, WorkDatabase workDatabase, List<ik> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        em emVarN = workDatabase.n();
        workDatabase.c();
        try {
            fm fmVar = (fm) emVarN;
            List<dm> listB = fmVar.b(Build.VERSION.SDK_INT == 23 ? pjVar.f / 2 : pjVar.f);
            if (((ArrayList) listB).size() > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                Iterator it = ((ArrayList) listB).iterator();
                while (it.hasNext()) {
                    fmVar.j(((dm) it.next()).a, jCurrentTimeMillis);
                }
            }
            workDatabase.j();
            workDatabase.g();
            ArrayList arrayList = (ArrayList) listB;
            if (arrayList.size() > 0) {
                dm[] dmVarArr = (dm[]) arrayList.toArray(new dm[0]);
                Iterator<ik> it2 = list.iterator();
                while (it2.hasNext()) {
                    it2.next().a(dmVarArr);
                }
            }
        } catch (Throwable th) {
            workDatabase.g();
            throw th;
        }
    }
}
