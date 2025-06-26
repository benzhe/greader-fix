package defpackage;

import android.app.Notification;
import android.app.RemoteInput;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class o7 {
    public final Notification.Builder a;
    public final m7 b;
    public final List<Bundle> c = new ArrayList();
    public final Bundle d = new Bundle();

    public o7(m7 m7Var) {
        this.b = m7Var;
        if (Build.VERSION.SDK_INT >= 26) {
            this.a = new Notification.Builder(m7Var.a, m7Var.q);
        } else {
            this.a = new Notification.Builder(m7Var.a);
        }
        Notification notification = m7Var.s;
        this.a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(m7Var.d).setContentText(m7Var.e).setContentInfo(null).setContentIntent(m7Var.f).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setLargeIcon((Bitmap) null).setNumber(m7Var.g).setProgress(m7Var.k, m7Var.l, m7Var.m);
        this.a.setSubText(null).setUsesChronometer(false).setPriority(m7Var.h);
        Iterator<k7> it = m7Var.b.iterator();
        while (it.hasNext()) {
            k7 next = it.next();
            int i = Build.VERSION.SDK_INT;
            IconCompat iconCompatA = next.a();
            Notification.Action.Builder builder = i >= 23 ? new Notification.Action.Builder(iconCompatA != null ? iconCompatA.f() : null, next.j, next.k) : new Notification.Action.Builder(iconCompatA != null ? iconCompatA.c() : 0, next.j, next.k);
            r7[] r7VarArr = next.c;
            if (r7VarArr != null) {
                int length = r7VarArr.length;
                RemoteInput[] remoteInputArr = new RemoteInput[length];
                if (r7VarArr.length > 0) {
                    r7 r7Var = r7VarArr[0];
                    throw null;
                }
                for (int i2 = 0; i2 < length; i2++) {
                    builder.addRemoteInput(remoteInputArr[i2]);
                }
            }
            Bundle bundle = next.a != null ? new Bundle(next.a) : new Bundle();
            bundle.putBoolean("android.support.allowGeneratedReplies", next.e);
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 24) {
                builder.setAllowGeneratedReplies(next.e);
            }
            bundle.putInt("android.support.action.semanticAction", next.g);
            if (i3 >= 28) {
                builder.setSemanticAction(next.g);
            }
            if (i3 >= 29) {
                builder.setContextual(next.h);
            }
            bundle.putBoolean("android.support.action.showsUserInterface", next.f);
            builder.addExtras(bundle);
            this.a.addAction(builder.build());
        }
        Bundle bundle2 = m7Var.o;
        if (bundle2 != null) {
            this.d.putAll(bundle2);
        }
        this.a.setShowWhen(m7Var.i);
        this.a.setLocalOnly(m7Var.n).setGroup(null).setGroupSummary(false).setSortKey(null);
        this.a.setCategory(null).setColor(m7Var.p).setVisibility(0).setPublicVersion(null).setSound(notification.sound, notification.audioAttributes);
        Iterator<String> it2 = m7Var.t.iterator();
        while (it2.hasNext()) {
            this.a.addPerson(it2.next());
        }
        if (m7Var.c.size() > 0) {
            if (m7Var.o == null) {
                m7Var.o = new Bundle();
            }
            Bundle bundle3 = m7Var.o.getBundle("android.car.EXTENSIONS");
            bundle3 = bundle3 == null ? new Bundle() : bundle3;
            Bundle bundle4 = new Bundle();
            for (int i4 = 0; i4 < m7Var.c.size(); i4++) {
                String string = Integer.toString(i4);
                k7 k7Var = m7Var.c.get(i4);
                Object obj = p7.a;
                Bundle bundle5 = new Bundle();
                IconCompat iconCompatA2 = k7Var.a();
                bundle5.putInt("icon", iconCompatA2 != null ? iconCompatA2.c() : 0);
                bundle5.putCharSequence("title", k7Var.j);
                bundle5.putParcelable("actionIntent", k7Var.k);
                Bundle bundle6 = k7Var.a != null ? new Bundle(k7Var.a) : new Bundle();
                bundle6.putBoolean("android.support.allowGeneratedReplies", k7Var.e);
                bundle5.putBundle("extras", bundle6);
                bundle5.putParcelableArray("remoteInputs", p7.a(k7Var.c));
                bundle5.putBoolean("showsUserInterface", k7Var.f);
                bundle5.putInt("semanticAction", k7Var.g);
                bundle4.putBundle(string, bundle5);
            }
            bundle3.putBundle("invisible_actions", bundle4);
            if (m7Var.o == null) {
                m7Var.o = new Bundle();
            }
            m7Var.o.putBundle("android.car.EXTENSIONS", bundle3);
            this.d.putBundle("android.car.EXTENSIONS", bundle3);
        }
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 24) {
            this.a.setExtras(m7Var.o).setRemoteInputHistory(null);
        }
        if (i5 >= 26) {
            this.a.setBadgeIconType(0).setShortcutId(null).setTimeoutAfter(0L).setGroupAlertBehavior(0);
            if (!TextUtils.isEmpty(m7Var.q)) {
                this.a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i5 >= 29) {
            this.a.setAllowSystemGeneratedContextualActions(m7Var.r);
            this.a.setBubbleMetadata(null);
        }
    }
}
