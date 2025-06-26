package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import defpackage.ui;
import defpackage.wi;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(ui uiVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        wi wiVarO = remoteActionCompat.a;
        if (uiVar.i(1)) {
            wiVarO = uiVar.o();
        }
        remoteActionCompat.a = (IconCompat) wiVarO;
        CharSequence charSequenceH = remoteActionCompat.b;
        if (uiVar.i(2)) {
            charSequenceH = uiVar.h();
        }
        remoteActionCompat.b = charSequenceH;
        CharSequence charSequenceH2 = remoteActionCompat.c;
        if (uiVar.i(3)) {
            charSequenceH2 = uiVar.h();
        }
        remoteActionCompat.c = charSequenceH2;
        remoteActionCompat.d = (PendingIntent) uiVar.m(remoteActionCompat.d, 4);
        boolean zF = remoteActionCompat.e;
        if (uiVar.i(5)) {
            zF = uiVar.f();
        }
        remoteActionCompat.e = zF;
        boolean zF2 = remoteActionCompat.f;
        if (uiVar.i(6)) {
            zF2 = uiVar.f();
        }
        remoteActionCompat.f = zF2;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, ui uiVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Objects.requireNonNull(uiVar);
        IconCompat iconCompat = remoteActionCompat.a;
        uiVar.p(1);
        uiVar.w(iconCompat);
        CharSequence charSequence = remoteActionCompat.b;
        uiVar.p(2);
        uiVar.s(charSequence);
        CharSequence charSequence2 = remoteActionCompat.c;
        uiVar.p(3);
        uiVar.s(charSequence2);
        PendingIntent pendingIntent = remoteActionCompat.d;
        uiVar.p(4);
        uiVar.u(pendingIntent);
        boolean z = remoteActionCompat.e;
        uiVar.p(5);
        uiVar.q(z);
        boolean z2 = remoteActionCompat.f;
        uiVar.p(6);
        uiVar.q(z2);
    }
}
