package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.transition.R$id;
import defpackage.qh;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ji extends th {
    public final /* synthetic */ ViewGroup a;
    public final /* synthetic */ View b;
    public final /* synthetic */ View c;
    public final /* synthetic */ ki d;

    public ji(ki kiVar, ViewGroup viewGroup, View view, View view2) {
        this.d = kiVar;
        this.a = viewGroup;
        this.b = view;
        this.c = view2;
    }

    @Override // defpackage.th, qh.d
    public void b(qh qhVar) {
        this.a.getOverlay().remove(this.b);
    }

    @Override // qh.d
    public void c(qh qhVar) {
        this.c.setTag(R$id.save_overlay_view, null);
        this.a.getOverlay().remove(this.b);
        qhVar.x(this);
    }

    @Override // defpackage.th, qh.d
    public void e(qh qhVar) {
        if (this.b.getParent() == null) {
            this.a.getOverlay().add(this.b);
            return;
        }
        ki kiVar = this.d;
        int size = kiVar.q.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            } else {
                kiVar.q.get(size).cancel();
            }
        }
        ArrayList<qh.d> arrayList = kiVar.u;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) kiVar.u.clone();
        int size2 = arrayList2.size();
        for (int i = 0; i < size2; i++) {
            ((qh.d) arrayList2.get(i)).d(kiVar);
        }
    }
}
