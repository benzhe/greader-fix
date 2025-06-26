package defpackage;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public class m7 {
    public Context a;
    public CharSequence d;
    public CharSequence e;
    public PendingIntent f;
    public int g;
    public int h;
    public n7 j;
    public int k;
    public int l;
    public boolean m;
    public Bundle o;
    public String q;
    public boolean r;
    public Notification s;

    @Deprecated
    public ArrayList<String> t;
    public ArrayList<k7> b = new ArrayList<>();
    public ArrayList<k7> c = new ArrayList<>();
    public boolean i = true;
    public boolean n = false;
    public int p = 0;

    public m7(Context context, String str) {
        Notification notification = new Notification();
        this.s = notification;
        this.a = context;
        this.q = str;
        notification.when = System.currentTimeMillis();
        this.s.audioStreamType = -1;
        this.h = 0;
        this.t = new ArrayList<>();
        this.r = true;
    }

    public static CharSequence c(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public m7 a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
        this.b.add(new k7(i, charSequence, pendingIntent));
        return this;
    }

    public Notification b() {
        Notification notificationBuild;
        o7 o7Var = new o7(this);
        n7 n7Var = o7Var.b.j;
        if (n7Var != null) {
            new Notification.BigTextStyle(o7Var.a).setBigContentTitle(null).bigText(((l7) n7Var).b);
        }
        int i = Build.VERSION.SDK_INT;
        if (i < 26 && i < 24) {
            o7Var.a.setExtras(o7Var.d);
            notificationBuild = o7Var.a.build();
        } else {
            notificationBuild = o7Var.a.build();
        }
        Objects.requireNonNull(o7Var.b);
        if (n7Var != null) {
            Objects.requireNonNull(o7Var.b.j);
        }
        if (n7Var != null) {
            Bundle bundle = notificationBuild.extras;
        }
        return notificationBuild;
    }

    public m7 d(CharSequence charSequence) {
        this.e = c(charSequence);
        return this;
    }

    public m7 e(CharSequence charSequence) {
        this.d = c(charSequence);
        return this;
    }

    public final void f(int i, boolean z) {
        if (z) {
            Notification notification = this.s;
            notification.flags = i | notification.flags;
        } else {
            Notification notification2 = this.s;
            notification2.flags = (~i) & notification2.flags;
        }
    }

    public m7 g(int i, int i2, int i3) {
        Notification notification = this.s;
        notification.ledARGB = i;
        notification.ledOnMS = i2;
        notification.ledOffMS = i3;
        notification.flags = ((i2 == 0 || i3 == 0) ? 0 : 1) | (notification.flags & (-2));
        return this;
    }

    public m7 h(Uri uri) {
        Notification notification = this.s;
        notification.sound = uri;
        notification.audioStreamType = -1;
        notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
        return this;
    }

    public m7 i(n7 n7Var) {
        if (this.j != n7Var) {
            this.j = n7Var;
            if (n7Var.a != this) {
                n7Var.a = this;
                i(n7Var);
            }
        }
        return this;
    }

    public m7 j(CharSequence charSequence) {
        this.s.tickerText = c(charSequence);
        return this;
    }
}
