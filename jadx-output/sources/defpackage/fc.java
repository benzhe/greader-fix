package defpackage;

import android.view.View;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class fc implements Runnable {
    public final /* synthetic */ Object e;
    public final /* synthetic */ nc f;
    public final /* synthetic */ View g;
    public final /* synthetic */ Fragment h;
    public final /* synthetic */ ArrayList i;
    public final /* synthetic */ ArrayList j;
    public final /* synthetic */ ArrayList k;
    public final /* synthetic */ Object l;

    public fc(Object obj, nc ncVar, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
        this.e = obj;
        this.f = ncVar;
        this.g = view;
        this.h = fragment;
        this.i = arrayList;
        this.j = arrayList2;
        this.k = arrayList3;
        this.l = obj2;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj = this.e;
        if (obj != null) {
            this.f.n(obj, this.g);
            this.j.addAll(ic.h(this.f, this.e, this.h, this.i, this.g));
        }
        if (this.k != null) {
            if (this.l != null) {
                ArrayList<View> arrayList = new ArrayList<>();
                arrayList.add(this.g);
                this.f.o(this.l, this.k, arrayList);
            }
            this.k.clear();
            this.k.add(this.g);
        }
    }
}
