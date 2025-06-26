package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import com.google.android.gms.ads.AdService;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;

/* loaded from: classes.dex */
public final class cz1 extends mk0 {
    public final Context f;
    public final ns1 g;
    public final ls0 h;
    public final sy1 i;
    public final pp2 j;

    public cz1(Context context, sy1 sy1Var, ls0 ls0Var, ns1 ns1Var, pp2 pp2Var) {
        this.f = context;
        this.g = ns1Var;
        this.h = ls0Var;
        this.i = sy1Var;
        this.j = pp2Var;
    }

    public static void W6(final Activity activity, final zze zzeVar, final zzbg zzbgVar, final sy1 sy1Var, final ns1 ns1Var, final pp2 pp2Var, final String str, final String str2) {
        zzr.zzkv();
        AlertDialog.Builder builderZzc = zzj.zzc(activity, zzr.zzkx().zzzy());
        final Resources resourcesA = zzr.zzkz().a();
        builderZzc.setTitle(resourcesA == null ? "Open ad when you're back online." : resourcesA.getString(R.string.offline_opt_in_title)).setMessage(resourcesA == null ? "We'll send you a notification with a link to the advertiser site." : resourcesA.getString(R.string.offline_opt_in_message)).setPositiveButton(resourcesA == null ? "OK" : resourcesA.getString(R.string.offline_opt_in_confirm), new DialogInterface.OnClickListener(ns1Var, activity, pp2Var, sy1Var, str, zzbgVar, str2, resourcesA, zzeVar) { // from class: bz1
            public final ns1 e;
            public final Activity f;
            public final pp2 g;
            public final sy1 h;
            public final String i;
            public final zzbg j;
            public final String k;
            public final Resources l;
            public final zze m;

            {
                this.e = ns1Var;
                this.f = activity;
                this.g = pp2Var;
                this.h = sy1Var;
                this.i = str;
                this.j = zzbgVar;
                this.k = str2;
                this.l = resourcesA;
                this.m = zzeVar;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                final zze zzeVar2;
                ns1 ns1Var2 = this.e;
                Activity activity2 = this.f;
                pp2 pp2Var2 = this.g;
                sy1 sy1Var2 = this.h;
                String str3 = this.i;
                zzbg zzbgVar2 = this.j;
                String str4 = this.k;
                Resources resources = this.l;
                zze zzeVar3 = this.m;
                if (ns1Var2 != null) {
                    HashMap map = new HashMap();
                    map.put("dialog_action", "confirm");
                    zzeVar2 = zzeVar3;
                    cz1.Y6(activity2, ns1Var2, pp2Var2, sy1Var2, str3, "dialog_click", map);
                } else {
                    zzeVar2 = zzeVar3;
                }
                boolean zZzd = false;
                try {
                    zZzd = zzbgVar2.zzd(new y20(activity2), str4, str3);
                } catch (RemoteException e) {
                    is0.zzc("Failed to schedule offline notification poster.", e);
                }
                if (!zZzd) {
                    sy1Var2.e(str3);
                    if (ns1Var2 != null) {
                        cz1.X6(activity2, ns1Var2, pp2Var2, sy1Var2, str3, "offline_notification_worker_not_scheduled");
                    }
                }
                zzr.zzkv();
                AlertDialog.Builder builderZzc2 = zzj.zzc(activity2, zzr.zzkx().zzzy());
                builderZzc2.setMessage(resources == null ? "You'll get a notification with the link when you're back online" : resources.getString(R.string.offline_opt_in_confirmation)).setOnCancelListener(new DialogInterface.OnCancelListener(zzeVar2) { // from class: gz1
                    public final zze e;

                    {
                        this.e = zzeVar2;
                    }

                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface2) {
                        zze zzeVar4 = this.e;
                        if (zzeVar4 != null) {
                            zzeVar4.close();
                        }
                    }
                });
                AlertDialog alertDialogCreate = builderZzc2.create();
                alertDialogCreate.show();
                Timer timer = new Timer();
                timer.schedule(new fz1(alertDialogCreate, timer, zzeVar2), 3000L);
            }
        }).setNegativeButton(resourcesA == null ? "No thanks" : resourcesA.getString(R.string.offline_opt_in_decline), new DialogInterface.OnClickListener(sy1Var, str, ns1Var, activity, pp2Var, zzeVar) { // from class: ez1
            public final sy1 e;
            public final String f;
            public final ns1 g;
            public final Activity h;
            public final pp2 i;
            public final zze j;

            {
                this.e = sy1Var;
                this.f = str;
                this.g = ns1Var;
                this.h = activity;
                this.i = pp2Var;
                this.j = zzeVar;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                sy1 sy1Var2 = this.e;
                String str3 = this.f;
                ns1 ns1Var2 = this.g;
                Activity activity2 = this.h;
                pp2 pp2Var2 = this.i;
                zze zzeVar2 = this.j;
                sy1Var2.e(str3);
                if (ns1Var2 != null) {
                    HashMap map = new HashMap();
                    map.put("dialog_action", "dismiss");
                    cz1.Y6(activity2, ns1Var2, pp2Var2, sy1Var2, str3, "dialog_click", map);
                }
                if (zzeVar2 != null) {
                    zzeVar2.close();
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener(sy1Var, str, ns1Var, activity, pp2Var, zzeVar) { // from class: dz1
            public final sy1 e;
            public final String f;
            public final ns1 g;
            public final Activity h;
            public final pp2 i;
            public final zze j;

            {
                this.e = sy1Var;
                this.f = str;
                this.g = ns1Var;
                this.h = activity;
                this.i = pp2Var;
                this.j = zzeVar;
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                sy1 sy1Var2 = this.e;
                String str3 = this.f;
                ns1 ns1Var2 = this.g;
                Activity activity2 = this.h;
                pp2 pp2Var2 = this.i;
                zze zzeVar2 = this.j;
                sy1Var2.e(str3);
                if (ns1Var2 != null) {
                    HashMap map = new HashMap();
                    map.put("dialog_action", "dismiss");
                    cz1.Y6(activity2, ns1Var2, pp2Var2, sy1Var2, str3, "dialog_click", map);
                }
                if (zzeVar2 != null) {
                    zzeVar2.close();
                }
            }
        });
        builderZzc.create().show();
    }

    public static void X6(Context context, ns1 ns1Var, pp2 pp2Var, sy1 sy1Var, String str, String str2) {
        Y6(context, ns1Var, pp2Var, sy1Var, str, str2, new HashMap());
    }

    public static void Y6(Context context, ns1 ns1Var, pp2 pp2Var, sy1 sy1Var, String str, String str2, Map<String, String> map) {
        String strA;
        if (((Boolean) os3.j.f.a(y40.e5)).booleanValue()) {
            qp2 qp2VarC = qp2.c(str2);
            qp2VarC.a.put("gqi", str);
            zzr.zzkv();
            qp2VarC.a.put("device_connectivity", zzj.zzbd(context) ? "online" : "offline");
            qp2VarC.a.put("event_timestamp", String.valueOf(zzr.zzlc().a()));
            for (Map.Entry<String, String> entry : map.entrySet()) {
                qp2VarC.a.put(entry.getKey(), entry.getValue());
            }
            strA = pp2Var.a(qp2VarC);
        } else {
            ms1 ms1VarA = ns1Var.a();
            ms1VarA.a.put("gqi", str);
            ms1VarA.a.put("action", str2);
            zzr.zzkv();
            ms1VarA.a.put("device_connectivity", zzj.zzbd(context) ? "online" : "offline");
            ms1VarA.a.put("event_timestamp", String.valueOf(zzr.zzlc().a()));
            for (Map.Entry<String, String> entry2 : map.entrySet()) {
                ms1VarA.a.put(entry2.getKey(), entry2.getValue());
            }
            strA = ms1VarA.b.a.e.a(ms1VarA.a);
        }
        sy1Var.c(new yy1(sy1Var, new zy1(zzr.zzlc().a(), str, strA, 2)));
    }

    @Override // defpackage.jk0
    public final void d3() {
        this.i.c(new uy1(this.h));
    }

    @Override // defpackage.jk0
    public final void f0(Intent intent) {
        char c;
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra("uri");
            zzr.zzkv();
            boolean zZzbd = zzj.zzbd(this.f);
            HashMap map = new HashMap();
            if (stringExtra.equals("offline_notification_clicked")) {
                map.put("offline_notification_action", "offline_notification_clicked");
                char c2 = zZzbd ? (char) 1 : (char) 2;
                map.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                map.put("olaih", String.valueOf(stringExtra3.startsWith("http")));
                try {
                    Context context = this.f;
                    Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                    if (launchIntentForPackage == null) {
                        launchIntentForPackage = new Intent("android.intent.action.VIEW");
                        launchIntentForPackage.setData(Uri.parse(stringExtra3));
                    }
                    launchIntentForPackage.addFlags(268435456);
                    context.startActivity(launchIntentForPackage);
                    map.put("olaa", "olas");
                } catch (ActivityNotFoundException unused) {
                    map.put("olaa", "olaf");
                }
                c = c2;
            } else {
                map.put("offline_notification_action", "offline_notification_dismissed");
                c = 2;
            }
            Y6(this.f, this.g, this.j, this.i, stringExtra2, "offline_notification_action", map);
            try {
                SQLiteDatabase writableDatabase = this.i.getWritableDatabase();
                if (c == 1) {
                    this.i.f.execute(new ty1(writableDatabase, stringExtra2, this.h));
                } else {
                    sy1.b(writableDatabase, stringExtra2);
                }
            } catch (SQLiteException e) {
                String strValueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 51);
                sb.append("Failed to get writable offline buffering database: ");
                sb.append(strValueOf);
                is0.zzex(sb.toString());
            }
        }
    }

    @Override // defpackage.jk0
    public final void h5(x20 x20Var, String str, String str2) {
        Context context = (Context) y20.l0(x20Var);
        zzr.zzkv();
        zzj.zzbe(context);
        int i = Build.VERSION.SDK_INT >= 23 ? 1140850688 : 1073741824;
        Intent intent = new Intent();
        intent.setClass(context, AdService.class);
        intent.setAction("offline_notification_clicked");
        intent.putExtra("offline_notification_action", "offline_notification_clicked");
        intent.putExtra("gws_query_id", str2);
        intent.putExtra("uri", str);
        PendingIntent pendingIntentA = ns2.a(context, intent, i);
        Intent intent2 = new Intent();
        intent2.setClass(context, AdService.class);
        intent2.setAction("offline_notification_dismissed");
        intent2.putExtra("offline_notification_action", "offline_notification_dismissed");
        intent2.putExtra("gws_query_id", str2);
        PendingIntent pendingIntentA2 = ns2.a(context, intent2, i);
        Resources resourcesA = zzr.zzkz().a();
        m7 m7Var = new m7(context, "offline_notification_channel");
        m7Var.e(resourcesA == null ? "View the ad you saved when you were offline" : resourcesA.getString(R.string.offline_notification_title));
        m7Var.d(resourcesA == null ? "Tap to open ad" : resourcesA.getString(R.string.offline_notification_text));
        m7Var.f(16, true);
        m7Var.s.deleteIntent = pendingIntentA2;
        m7Var.f = pendingIntentA;
        m7Var.s.icon = context.getApplicationInfo().icon;
        ((NotificationManager) context.getSystemService("notification")).notify(str2, 54321, m7Var.b());
        Y6(this.f, this.g, this.j, this.i, str2, "offline_notification_impression", new HashMap());
    }
}
