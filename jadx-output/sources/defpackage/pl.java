package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* loaded from: classes.dex */
public abstract class pl<T> extends ql<T> {
    public static final String h = vj.e("BrdcstRcvrCnstrntTrckr");
    public final BroadcastReceiver g;

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                pl.this.g(context, intent);
            }
        }
    }

    public pl(Context context, xm xmVar) {
        super(context, xmVar);
        this.g = new a();
    }

    @Override // defpackage.ql
    public void d() {
        vj.c().a(h, String.format("%s: registering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.b.registerReceiver(this.g, f());
    }

    @Override // defpackage.ql
    public void e() {
        vj.c().a(h, String.format("%s: unregistering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.b.unregisterReceiver(this.g);
    }

    public abstract IntentFilter f();

    public abstract void g(Context context, Intent intent);
}
