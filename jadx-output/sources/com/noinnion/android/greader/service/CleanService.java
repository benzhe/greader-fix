package com.noinnion.android.greader.service;

import android.app.IntentService;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Environment;
import android.os.IBinder;
import android.os.PowerManager;
import com.noinnion.android.greader.reader.R;
import defpackage.ap6;
import defpackage.hy6;
import defpackage.iw6;
import defpackage.jo;
import defpackage.m7;
import defpackage.mx6;
import defpackage.n56;
import defpackage.vx6;
import defpackage.xo6;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class CleanService extends IntentService {

    public class a extends Binder {
        public a(CleanService cleanService) {
        }
    }

    public CleanService() {
        super("CleanService");
    }

    public final void a() throws InterruptedException, IOException {
        File[] fileArrListFiles;
        File[] fileArrListFiles2;
        int length;
        if (((PowerManager) getSystemService("power")).isInteractive()) {
            return;
        }
        Context applicationContext = getApplicationContext();
        String strF = iw6.F(applicationContext, "cache_auto_cleanup_images");
        int i = (strF == null || strF.length() == 0) ? 1000 : Integer.parseInt(strF);
        if (i >= 0) {
            String strC = iw6.C(applicationContext);
            if (strC == null) {
                strC = Environment.getExternalStorageDirectory().getAbsolutePath();
            }
            File file = new File(jo.n(strC, "/gReader/.image-cache/"));
            if (file.exists() && (fileArrListFiles2 = file.listFiles()) != null && (length = fileArrListFiles2.length) > i) {
                mx6[] mx6VarArr = new mx6[fileArrListFiles2.length];
                for (int i2 = 0; i2 < fileArrListFiles2.length; i2++) {
                    mx6VarArr[i2] = new mx6(fileArrListFiles2[i2]);
                }
                Arrays.sort(mx6VarArr);
                int i3 = length - i;
                String[] strArr = new String[i3];
                String[] strArr2 = new String[i3];
                for (int i4 = 0; i4 < i3; i4++) {
                    strArr2[i4] = mx6VarArr[i4].f.getAbsolutePath();
                    strArr[i4] = mx6VarArr[i4].f.getName();
                }
                hy6.d(strArr2);
            }
        }
        Context applicationContext2 = getApplicationContext();
        String strC2 = iw6.C(applicationContext2);
        if (strC2 == null) {
            strC2 = Environment.getExternalStorageDirectory().getAbsolutePath();
        }
        File file2 = new File(jo.n(strC2, "/gReader/cache/"));
        if (!file2.exists() || (fileArrListFiles = file2.listFiles()) == null || fileArrListFiles.length == 0) {
            return;
        }
        int length2 = fileArrListFiles.length;
        HashSet hashSet = new HashSet();
        int count = -1;
        int i5 = 0;
        while (true) {
            if (count != -1 && count < 1000) {
                break;
            }
            ContentResolver contentResolver = applicationContext2.getContentResolver();
            Uri uri = ap6.B;
            String[] strArr3 = ap6.J;
            StringBuilder sbZ = jo.z("sync_time DESC limit ");
            sbZ.append(i5 * 1000);
            sbZ.append(", 1000");
            Cursor cursorQuery = contentResolver.query(uri, strArr3, "cached > 0", null, sbZ.toString());
            if (cursorQuery == null) {
                hashSet = null;
                break;
            }
            try {
                if (cursorQuery.moveToFirst()) {
                    do {
                        hashSet.add(String.valueOf(cursorQuery.getString(0).hashCode()));
                    } while (cursorQuery.moveToNext());
                }
                cursorQuery.close();
                count = cursorQuery.getCount();
                i5++;
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        if (hashSet == null || hashSet.size() == 0) {
            n56.n0(applicationContext2);
            return;
        }
        if (length2 <= hashSet.size()) {
            return;
        }
        HashSet hashSet2 = new HashSet();
        for (File file3 : fileArrListFiles) {
            hashSet2.add(file3.getName());
        }
        hashSet2.removeAll(hashSet);
        String absolutePath = file2.getAbsolutePath();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = hashSet2.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            arrayList2.add(absolutePath + "/" + str);
            arrayList.add(str);
        }
        if (arrayList2.size() > 0) {
            hy6.d((String[]) arrayList2.toArray(new String[arrayList2.size()]));
        }
    }

    @Override // android.app.IntentService, android.app.Service
    public IBinder onBind(Intent intent) {
        return new a(this);
    }

    @Override // android.app.IntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.IntentService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        Context applicationContext = getApplicationContext();
        CharSequence text = applicationContext.getText(R.string.app_name);
        CharSequence text2 = applicationContext.getText(R.string.msg_cleanup_running);
        long jCurrentTimeMillis = System.currentTimeMillis();
        m7 m7Var = new m7(applicationContext, vx6.a(applicationContext, "clean_service_v2", "Clean Service"));
        m7Var.e(text);
        m7Var.d(text2);
        m7Var.j(text2);
        Notification notification = m7Var.s;
        notification.icon = R.drawable.ic_notification_app;
        notification.when = jCurrentTimeMillis;
        m7Var.f(16, true);
        startForeground(R.id.notification_clean_up, m7Var.b());
        try {
            a();
            xo6.a(this);
            stopForeground(false);
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.cancel(R.id.notification_clean_up);
            }
        } catch (Throwable th) {
            xo6.a(this);
            throw th;
        }
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return true;
    }
}
