package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzvt;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.util.ArrayList;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class k82 implements qd2<l82> {
    public final zv2 a;
    public final Context b;
    public final ll2 c;
    public final View d;

    public k82(zv2 zv2Var, Context context, ll2 ll2Var, ViewGroup viewGroup) {
        this.a = zv2Var;
        this.b = context;
        this.c = ll2Var;
        this.d = viewGroup;
    }

    @Override // defpackage.qd2
    public final aw2<l82> a() {
        return this.a.y(new Callable(this) { // from class: n82
            public final k82 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                k82 k82Var = this.e;
                Context context = k82Var.b;
                zzvt zzvtVar = k82Var.c.e;
                ArrayList arrayList = new ArrayList();
                View view = k82Var.d;
                while (view != null) {
                    Object parent = view.getParent();
                    if (parent == null) {
                        break;
                    }
                    int iIndexOfChild = parent instanceof ViewGroup ? ((ViewGroup) parent).indexOfChild(view) : -1;
                    Bundle bundle = new Bundle();
                    bundle.putString(NSRSS20.ENC_TYPE, parent.getClass().getName());
                    bundle.putInt("index_of_child", iIndexOfChild);
                    arrayList.add(bundle);
                    if (!(parent instanceof View)) {
                        break;
                    }
                    view = (View) parent;
                }
                return new l82(context, zzvtVar, arrayList);
            }
        });
    }
}
