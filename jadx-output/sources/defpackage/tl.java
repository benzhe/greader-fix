package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public class tl {
    public static tl e;
    public nl a;
    public ol b;
    public rl c;
    public sl d;

    public tl(Context context, xm xmVar) {
        Context applicationContext = context.getApplicationContext();
        this.a = new nl(applicationContext, xmVar);
        this.b = new ol(applicationContext, xmVar);
        this.c = new rl(applicationContext, xmVar);
        this.d = new sl(applicationContext, xmVar);
    }

    public static synchronized tl a(Context context, xm xmVar) {
        if (e == null) {
            e = new tl(context, xmVar);
        }
        return e;
    }
}
