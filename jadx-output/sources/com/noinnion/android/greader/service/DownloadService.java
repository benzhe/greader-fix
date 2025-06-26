package com.noinnion.android.greader.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.download.DownloadActivity;
import defpackage.dw6;
import defpackage.m7;
import defpackage.mp6;
import defpackage.n56;
import defpackage.vx6;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Objects;
import java.util.TimeZone;
import org.apache.commons.lang3.time.TimeZones;

/* loaded from: classes2.dex */
public class DownloadService extends Service {
    public final SparseArray<dw6> e = new SparseArray<>();
    public Messenger f = new Messenger(new b());
    public final mp6.a g = new a();

    public class a extends mp6.a {
        public a() {
        }

        @Override // defpackage.mp6
        public String A1(int i) throws RemoteException {
            dw6 dw6Var = DownloadService.this.e.get(i);
            Objects.requireNonNull(dw6Var);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(calendar.getTimeInMillis() - dw6Var.n);
            return simpleDateFormat.format(calendar.getTime());
        }

        @Override // defpackage.mp6
        public String A2(int i) throws RemoteException {
            dw6 dw6Var = DownloadService.this.e.get(i);
            String str = dw6Var.k;
            if (str == null || str.length() == 0) {
                dw6Var.k = n56.J0(dw6Var.f, true);
            }
            return dw6Var.k;
        }

        @Override // defpackage.mp6
        public void A4(int i) throws RemoteException {
            try {
                DownloadService.this.e.get(i).a();
            } catch (Exception e) {
                n56.X1(DownloadService.this.getApplicationContext(), e.getLocalizedMessage());
            }
        }

        @Override // defpackage.mp6
        public void D0() throws RemoteException {
            for (int i = 0; i < DownloadService.this.e.size(); i++) {
                DownloadService.this.e.get(DownloadService.this.e.keyAt(i)).a();
            }
            DownloadService.this.e.clear();
            DownloadService.this.stopSelf();
        }

        @Override // defpackage.mp6
        public float D3(int i) throws RemoteException {
            return DownloadService.this.e.get(i).c();
        }

        @Override // defpackage.mp6
        public void L0(int i) throws RemoteException {
            try {
                dw6 dw6Var = DownloadService.this.e.get(i);
                dw6Var.i = 0;
                dw6Var.d();
                new Thread(dw6Var).start();
            } catch (Exception e) {
                n56.X1(DownloadService.this.getApplicationContext(), e.getLocalizedMessage());
            }
        }

        @Override // defpackage.mp6
        public int L2(int i) throws RemoteException {
            dw6 dw6Var = DownloadService.this.e.get(i);
            return (int) ((dw6Var.h / dw6Var.g) * 100.0f);
        }

        @Override // defpackage.mp6
        public long R2(int i) throws RemoteException {
            return DownloadService.this.e.get(i).m;
        }

        @Override // defpackage.mp6
        public String S5(int i) throws RemoteException {
            return DownloadService.this.e.get(i).f;
        }

        @Override // defpackage.mp6
        public String W5(int i) throws RemoteException {
            dw6 dw6Var = DownloadService.this.e.get(i);
            Objects.requireNonNull(dw6Var);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis((long) ((((dw6Var.g - dw6Var.h) / 1024) / dw6Var.c()) * 1000.0f));
            return simpleDateFormat.format(calendar.getTime());
        }

        @Override // defpackage.mp6
        public void X3(int i) throws RemoteException {
            dw6 dw6Var = DownloadService.this.e.get(i);
            dw6Var.i = 0;
            dw6Var.d();
            new Thread(dw6Var).start();
        }

        public void Z(String str, String str2, String str3) throws RemoteException {
            try {
                if (DownloadService.this.e.indexOfKey(str.hashCode()) < 0) {
                    dw6 dw6Var = new dw6(DownloadService.this.getBaseContext(), str, str2, str3);
                    DownloadService downloadService = DownloadService.this;
                    dw6Var.o = downloadService.f;
                    downloadService.e.put(str.hashCode(), dw6Var);
                    L0(str.hashCode());
                }
            } catch (Exception e) {
                n56.X1(DownloadService.this.getApplicationContext(), e.getLocalizedMessage());
            }
        }

        @Override // defpackage.mp6
        public List<String> j6() throws RemoteException {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < DownloadService.this.e.size(); i++) {
                arrayList.add(String.valueOf(DownloadService.this.e.keyAt(i)));
            }
            return arrayList;
        }

        @Override // defpackage.mp6
        public int m3() throws RemoteException {
            return DownloadService.this.e.size();
        }

        @Override // defpackage.mp6
        public void remove(int i) throws RemoteException {
            try {
                DownloadService.this.e.get(i).a();
                DownloadService.this.e.remove(i);
                if (DownloadService.this.e.size() == 0) {
                    DownloadService.this.stopSelf();
                }
            } catch (Exception e) {
                n56.X1(DownloadService.this.getApplicationContext(), e.getLocalizedMessage());
            }
        }

        @Override // defpackage.mp6
        public String t3(int i) throws RemoteException {
            return DownloadService.this.e.get(i).l;
        }

        @Override // defpackage.mp6
        public int v0(int i) throws RemoteException {
            return DownloadService.this.e.get(i).i;
        }

        @Override // defpackage.mp6
        public String x5(int i) throws RemoteException {
            return DownloadService.this.e.get(i).j;
        }
    }

    public class b extends Handler {
        public b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
                return;
            }
            DownloadService downloadService = DownloadService.this;
            boolean z = true;
            for (int i = 0; i < downloadService.e.size(); i++) {
                if (downloadService.e.get(downloadService.e.keyAt(i)).i <= 1) {
                    z = false;
                }
            }
            if (z) {
                downloadService.stopForeground(false);
                NotificationManager notificationManager = (NotificationManager) downloadService.getSystemService("notification");
                if (notificationManager != null) {
                    notificationManager.cancel(R.id.notification_download_media);
                }
            }
        }
    }

    public final void a() {
        Context applicationContext = getApplicationContext();
        CharSequence text = applicationContext.getText(R.string.app_name);
        CharSequence text2 = applicationContext.getText(R.string.download_downloading_files);
        long jCurrentTimeMillis = System.currentTimeMillis();
        Intent intent = new Intent(applicationContext, (Class<?>) DownloadActivity.class);
        intent.putExtra("startDownloading", true);
        PendingIntent activity = PendingIntent.getActivity(applicationContext, 0, intent, 0);
        m7 m7Var = new m7(applicationContext, vx6.a(applicationContext, "download_media_v2", "Download Media"));
        m7Var.e(text);
        m7Var.d(text2);
        m7Var.j(text2);
        Notification notification = m7Var.s;
        notification.icon = android.R.drawable.stat_sys_download_done;
        notification.when = jCurrentTimeMillis;
        m7Var.f(16, true);
        m7Var.f = activity;
        startForeground(R.id.notification_download_media, m7Var.b());
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.g;
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        try {
            Uri data = intent.getData();
            if (data == null) {
                return;
            }
            a();
            String stringExtra = intent.getStringExtra("download_local");
            String stringExtra2 = intent.getStringExtra("download_type");
            new File(new File(stringExtra).getParent()).mkdirs();
            ((a) this.g).Z(data.toString(), stringExtra, stringExtra2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
