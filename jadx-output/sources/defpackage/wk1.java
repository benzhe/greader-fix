package defpackage;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class wk1 implements View.OnClickListener {
    public final io1 e;
    public final b20 f;
    public u90 g;
    public kb0<Object> h;
    public String i;
    public Long j;
    public WeakReference<View> k;

    public wk1(io1 io1Var, b20 b20Var) {
        this.e = io1Var;
        this.f = b20Var;
    }

    public final void a() {
        View view;
        this.i = null;
        this.j = null;
        WeakReference<View> weakReference = this.k;
        if (weakReference == null || (view = weakReference.get()) == null) {
            return;
        }
        view.setClickable(false);
        view.setOnClickListener(null);
        this.k = null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference<View> weakReference = this.k;
        if (weakReference == null || weakReference.get() != view) {
            return;
        }
        if (this.i != null && this.j != null) {
            HashMap map = new HashMap();
            map.put("id", this.i);
            map.put("time_interval", String.valueOf(this.f.a() - this.j.longValue()));
            map.put("messageType", "onePointFiveClick");
            this.e.b("sendMessageToNativeJs", map);
        }
        a();
    }
}
