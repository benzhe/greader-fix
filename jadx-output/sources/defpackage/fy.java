package defpackage;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.base.R$drawable;
import com.google.android.gms.base.R$string;
import java.util.Objects;

/* loaded from: classes.dex */
public class fy extends gy {
    public static final Object c = new Object();
    public static final fy d = new fy();

    public class a extends tv3 {
        public final Context a;

        public a(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.a = context.getApplicationContext();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) throws Resources.NotFoundException {
            int i = message.what;
            boolean z = true;
            if (i != 1) {
                StringBuilder sb = new StringBuilder(50);
                sb.append("Don't know how to handle this message: ");
                sb.append(i);
                Log.w("GoogleApiAvailability", sb.toString());
                return;
            }
            int iC = fy.this.c(this.a);
            Objects.requireNonNull(fy.this);
            boolean z2 = ky.a;
            if (iC != 1 && iC != 2 && iC != 3 && iC != 9) {
                z = false;
            }
            if (z) {
                fy fyVar = fy.this;
                Context context = this.a;
                Intent intentB = fyVar.b(context, iC, "n");
                fyVar.f(context, iC, intentB == null ? null : PendingIntent.getActivity(context, 0, intentB, 134217728));
            }
        }
    }

    @Override // defpackage.gy
    public Intent b(Context context, int i, String str) {
        return super.b(context, i, str);
    }

    @Override // defpackage.gy
    public int c(Context context) {
        return d(context, gy.a);
    }

    @Override // defpackage.gy
    public int d(Context context, int i) {
        return super.d(context, i);
    }

    public boolean e(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog alertDialogCreate;
        a10 a10Var = new a10(super.b(activity, i, "d"), activity, i2);
        if (i == 0) {
            alertDialogCreate = null;
        } else {
            TypedValue typedValue = new TypedValue();
            activity.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
            AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(activity, 5) : null;
            if (builder == null) {
                builder = new AlertDialog.Builder(activity);
            }
            builder.setMessage(k00.b(activity, i));
            builder.setOnCancelListener(onCancelListener);
            Resources resources = activity.getResources();
            String string = i != 1 ? i != 2 ? i != 3 ? resources.getString(R.string.ok) : resources.getString(R$string.common_google_play_services_enable_button) : resources.getString(R$string.common_google_play_services_update_button) : resources.getString(R$string.common_google_play_services_install_button);
            if (string != null) {
                builder.setPositiveButton(string, a10Var);
            }
            String strC = k00.c(activity, i);
            if (strC != null) {
                builder.setTitle(strC);
            }
            alertDialogCreate = builder.create();
        }
        if (alertDialogCreate == null) {
            return false;
        }
        if (activity instanceof FragmentActivity) {
            wb wbVarO = ((FragmentActivity) activity).o();
            my myVar = new my();
            bi.j(alertDialogCreate, "Cannot display null dialog");
            alertDialogCreate.setOnCancelListener(null);
            alertDialogCreate.setOnDismissListener(null);
            myVar.e = alertDialogCreate;
            myVar.f = onCancelListener;
            myVar.show(wbVarO, "GooglePlayServicesErrorDialog");
        } else {
            FragmentManager fragmentManager = activity.getFragmentManager();
            ey eyVar = new ey();
            bi.j(alertDialogCreate, "Cannot display null dialog");
            alertDialogCreate.setOnCancelListener(null);
            alertDialogCreate.setOnDismissListener(null);
            eyVar.e = alertDialogCreate;
            eyVar.f = onCancelListener;
            eyVar.show(fragmentManager, "GooglePlayServicesErrorDialog");
        }
        return true;
    }

    public final void f(Context context, int i, PendingIntent pendingIntent) throws Resources.NotFoundException {
        int i2;
        if (i == 18) {
            new a(context).sendEmptyMessageDelayed(1, 120000L);
            return;
        }
        if (pendingIntent == null) {
            if (i == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String strD = i == 6 ? k00.d(context, "common_google_play_services_resolution_required_title") : k00.c(context, i);
        if (strD == null) {
            strD = context.getResources().getString(R$string.common_google_play_services_notification_ticker);
        }
        String strE = i == 6 ? k00.e(context, "common_google_play_services_resolution_required_text", k00.a(context)) : k00.b(context, i);
        Resources resources = context.getResources();
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        m7 m7Var = new m7(context, null);
        m7Var.n = true;
        m7Var.f(16, true);
        m7Var.e(strD);
        l7 l7Var = new l7();
        l7Var.b = m7.c(strE);
        m7Var.i(l7Var);
        if (bi.O(context)) {
            bi.l(true);
            m7Var.s.icon = context.getApplicationInfo().icon;
            m7Var.h = 2;
            if (bi.P(context)) {
                m7Var.a(R$drawable.common_full_open_on_phone, resources.getString(R$string.common_open_on_phone), pendingIntent);
            } else {
                m7Var.f = pendingIntent;
            }
        } else {
            m7Var.s.icon = R.drawable.stat_sys_warning;
            m7Var.j(resources.getString(R$string.common_google_play_services_notification_ticker));
            m7Var.s.when = System.currentTimeMillis();
            m7Var.f = pendingIntent;
            m7Var.d(strE);
        }
        if (bi.J()) {
            bi.l(bi.J());
            synchronized (c) {
            }
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
            m4<String, String> m4Var = k00.a;
            String string = context.getResources().getString(R$string.common_google_play_services_notification_channel_name);
            if (notificationChannel == null) {
                notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", string, 4));
            } else if (!string.contentEquals(notificationChannel.getName())) {
                notificationChannel.setName(string);
                notificationManager.createNotificationChannel(notificationChannel);
            }
            m7Var.q = "com.google.android.gms.availability";
        }
        Notification notificationB = m7Var.b();
        if (i == 1 || i == 2 || i == 3) {
            i2 = 10436;
            ky.c.set(false);
        } else {
            i2 = 39789;
        }
        notificationManager.notify(i2, notificationB);
    }
}
