package com.noinnion.android.greader.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.IBinder;
import android.text.TextUtils;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSContent;
import com.noinnion.android.greader.provider.ReaderProvider;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.download.DownloadFeedActivity;
import defpackage.ap6;
import defpackage.cn6;
import defpackage.cp6;
import defpackage.fw6;
import defpackage.hx6;
import defpackage.hy6;
import defpackage.hz6;
import defpackage.iw6;
import defpackage.ix6;
import defpackage.iy6;
import defpackage.m7;
import defpackage.n56;
import defpackage.np6;
import defpackage.vx6;
import defpackage.yd;
import java.io.File;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class FeedService extends Service {
    public static FeedService y;
    public List<c> f;
    public int n;
    public int o;
    public hx6 t;
    public NotificationManager v;
    public final BroadcastReceiver e = new a();
    public fw6 g = null;
    public final String[] h = new String[3];
    public long i = 0;
    public int j = 0;
    public int k = 0;
    public int l = 0;
    public boolean m = false;
    public boolean p = false;
    public boolean q = true;
    public String r = null;
    public ix6 s = null;
    public d[] u = new d[3];
    public m7 w = null;
    public final np6.a x = new b();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra;
            if (!intent.getAction().equals("com.noinnion.android.greader.reader.action.START_START_DOWNLOADING") || (stringExtra = intent.getStringExtra("item_ids")) == null) {
                return;
            }
            FeedService.this.f(stringExtra, intent.getBooleanExtra("save_page", false));
        }
    }

    public class b extends np6.a {
        public b() {
        }

        @Override // defpackage.np6
        public int T0() {
            return FeedService.this.h();
        }

        @Override // defpackage.np6
        public int c5() {
            FeedService feedService = FeedService.this;
            if (feedService.m) {
                return -1;
            }
            return feedService.l;
        }

        @Override // defpackage.np6
        public void cancel() {
            FeedService feedService = FeedService.this;
            feedService.m = true;
            feedService.j();
            feedService.stopSelf();
        }

        @Override // defpackage.np6
        public String f6() {
            return FeedService.this.h[2];
        }

        @Override // defpackage.np6
        public String n0() {
            return FeedService.this.h[1];
        }

        @Override // defpackage.np6
        public int p0() {
            return FeedService.this.j;
        }

        @Override // defpackage.np6
        public String y1() {
            return FeedService.this.h[0];
        }
    }

    public class c {
        public String a;
        public boolean b;

        public c(FeedService feedService, String str, boolean z) {
            this.a = str;
            this.b = z;
        }
    }

    public class d extends AsyncTask<Void, Integer, Void> {
        public int a;
        public boolean b = false;

        public d(int i) {
            this.a = 0;
            this.a = i;
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            c cVar;
            ap6 ap6VarK;
            FeedService feedService = FeedService.this;
            if (!feedService.m) {
                Context applicationContext = feedService.getApplicationContext();
                FeedService feedService2 = FeedService.this;
                synchronized (feedService2) {
                    if (feedService2.f.isEmpty()) {
                        cVar = null;
                    } else {
                        if (feedService2.f.size() == 1) {
                            this.b = true;
                        }
                        cVar = feedService2.f.get(0);
                        feedService2.f.remove(0);
                        feedService2.j = feedService2.l - feedService2.f.size();
                        feedService2.k++;
                    }
                }
                if (cVar != null) {
                    try {
                        ap6VarK = ap6.k(applicationContext, "_id", cVar.a, false);
                    } catch (SocketException e) {
                        n56.y1("FeedService", e);
                    } catch (Throwable th) {
                        n56.y1("FeedService", th);
                        th.printStackTrace();
                    }
                    if (ap6VarK != null && (cVar.b || !ap6VarK.v)) {
                        FeedService.this.k(this.a, ap6VarK.h);
                        FeedService feedService3 = FeedService.this;
                        if (feedService3.g == null) {
                            feedService3.g = fw6.a(applicationContext);
                        }
                        fw6 fw6Var = feedService3.g;
                        int iA = FeedService.a(FeedService.this, ap6VarK, cVar.b ? FeedService.this.o : FeedService.this.n);
                        if (fw6Var.b) {
                            FeedService.b(FeedService.this, ap6VarK);
                        }
                        if (fw6Var.c) {
                            FeedService.c(FeedService.this, ap6VarK);
                        }
                        if (fw6Var.d) {
                            FeedService.d(FeedService.this, ap6VarK);
                        }
                        if (iA > 0) {
                            FeedService.e(FeedService.this, ap6VarK.e, iA);
                        }
                        publishProgress(new Integer[0]);
                    }
                }
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r3) {
            FeedService feedService = FeedService.this;
            if (!feedService.m && !feedService.f.isEmpty()) {
                FeedService.this.i(this.a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } else if (this.b) {
                FeedService.this.j();
                FeedService.this.stopSelf();
            }
        }

        @Override // android.os.AsyncTask
        public void onProgressUpdate(Integer[] numArr) {
            FeedService feedService = FeedService.this;
            if (feedService.m || feedService.f.isEmpty()) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            FeedService feedService2 = FeedService.this;
            if (jCurrentTimeMillis - feedService2.i > 2000) {
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                synchronized (feedService2) {
                    feedService2.i = jCurrentTimeMillis2;
                }
                FeedService feedService3 = FeedService.this;
                feedService3.l(feedService3.h());
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:102|(2:195|103)|(1:105)(4:106|(0)|112|(8:117|118|193|119|120|183|121|(5:197|123|(3:125|(4:128|129|(1:203)(1:205)|126)|204)(0)|134|202)(1:200))(4:116|137|136|201))|111|112|(1:114)|117|118|193|119|120|183|121|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0292 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x02dd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0180 A[Catch: Exception -> 0x019b, TRY_LEAVE, TryCatch #2 {Exception -> 0x019b, blocks: (B:74:0x013b, B:76:0x0155, B:78:0x0180), top: B:185:0x013b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(com.noinnion.android.greader.service.FeedService r19, defpackage.ap6 r20, int r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 933
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.service.FeedService.a(com.noinnion.android.greader.service.FeedService, ap6, int):int");
    }

    public static void b(FeedService feedService, ap6 ap6Var) throws Resources.NotFoundException {
        Objects.requireNonNull(feedService);
        String strN = ap6Var.n();
        int i = 2;
        Matcher matcher = Pattern.compile(feedService.q ? "<img [^>]*?src=[\"']((.*?[\\.](jpeg|jpg|png|gif)).*?)[\"']" : "<img [^>]*?src=[\"'](.*?)[\"']", 2).matcher(ap6Var.i);
        boolean zFind = matcher.find();
        boolean z = false;
        boolean z2 = false;
        while (zFind) {
            try {
                String strGroup = matcher.group(1);
                String strGroup2 = matcher.groupCount() > 1 ? matcher.group(i) : strGroup;
                int i2 = iy6.a;
                String str = String.valueOf(strGroup2.hashCode()) + ".png";
                new HashSet(Arrays.asList("image/"));
                if (hy6.e(new File(feedService.r + "/gReader/.image-cache/", str), strGroup, new HashSet(Arrays.asList("image/")))) {
                    ap6Var.i = ap6Var.i.replace(strGroup, "content://com.noinnion.android.greader.reader.localfile/" + str);
                    z2 = true;
                }
                if (strN != null && strGroup2.equals(strN)) {
                    hz6 hz6VarJ = hz6.j();
                    File fileA = hz6VarJ.i().a(strGroup2);
                    File file = new File(feedService.r + "/gReader/.image-cache/", str);
                    if (fileA == null && file.exists()) {
                        hz6VarJ.m(strN, null, null, null, null);
                        z = true;
                    }
                }
            } catch (Exception unused) {
            }
            zFind = matcher.find();
            i = 2;
        }
        if (strN != null && !z) {
            hz6 hz6VarJ2 = hz6.j();
            if (hz6VarJ2.i().a(strN) == null) {
                hz6VarJ2.m(strN, null, null, null, null);
            }
        }
        if (z2) {
            ContentResolver contentResolver = feedService.getApplicationContext().getContentResolver();
            String[] strArr = {String.valueOf(ap6Var.e)};
            contentResolver.query(ReaderProvider.h, null, null, null, null);
            try {
                ContentValues contentValues = new ContentValues();
                String str2 = ap6Var.i;
                if (str2 == null) {
                    str2 = "";
                }
                contentValues.put(NSContent.NSTAG, str2);
                contentResolver.update(ap6.B, contentValues, "_id = ?", strArr);
                contentResolver.query(ReaderProvider.i, null, null, null, null);
            } finally {
                contentResolver.query(ReaderProvider.j, null, null, null, null);
            }
        }
    }

    public static void c(FeedService feedService, ap6 ap6Var) {
        Objects.requireNonNull(feedService);
        if (!TextUtils.isEmpty(ap6Var.n)) {
            for (cp6 cp6Var : ap6Var.j()) {
                try {
                    String strI0 = n56.I0(cp6Var.a, ap6Var.f);
                    if (strI0 != null && !new File(strI0).exists()) {
                        n56.r0(feedService.getBaseContext(), cp6Var.a, strI0, cp6Var.b);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void d(FeedService feedService, ap6 ap6Var) {
        Objects.requireNonNull(feedService);
        if (!TextUtils.isEmpty(ap6Var.m)) {
            for (cp6 cp6Var : ap6Var.o()) {
                try {
                    String strI0 = n56.I0(cp6Var.a, ap6Var.f);
                    if (strI0 != null && !new File(strI0).exists()) {
                        n56.r0(feedService.getBaseContext(), cp6Var.a, strI0, cp6Var.b);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void e(FeedService feedService, long j, int i) {
        Objects.requireNonNull(feedService);
        Intent intent = new Intent("com.noinnion.android.greader.reader.action.DOWNLOADING_UPDATED");
        intent.putExtra("itemId", j);
        intent.putExtra("content_format", i);
        yd.a(feedService).c(intent);
    }

    public synchronized void f(String str, boolean z) {
        String[] strArrSplit = Pattern.compile("&").split(str);
        if (strArrSplit.length == 0) {
            return;
        }
        for (String str2 : strArrSplit) {
            this.f.add(new c(this, str2, z));
        }
        this.l += strArrSplit.length;
    }

    public final NotificationManager g() {
        if (this.v == null) {
            this.v = (NotificationManager) getApplicationContext().getSystemService("notification");
        }
        return this.v;
    }

    public int h() {
        int i = this.l;
        if (i == 0) {
            return 0;
        }
        return (int) (((this.j + 1) * 100) / i);
    }

    public final d i(int i) {
        d dVar = this.u[i];
        if (dVar == null) {
            return new d(i);
        }
        dVar.a = i;
        dVar.b = false;
        return dVar;
    }

    public final void j() {
        stopForeground(false);
        g().cancel(R.id.notification_download_feed);
    }

    public synchronized void k(int i, String str) {
        this.h[i] = this.k + ". " + str;
    }

    public final void l(int i) {
        boolean z;
        CharSequence text = getText(R.string.download_downloading_articles);
        if (this.w == null) {
            CharSequence text2 = getText(R.string.app_name);
            long jCurrentTimeMillis = System.currentTimeMillis();
            PendingIntent activity = PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) DownloadFeedActivity.class), 0);
            m7 m7Var = new m7(this, vx6.a(this, "feed_service_v2", getString(R.string.download_downloading_articles)));
            this.w = m7Var;
            m7Var.e(text2);
            m7Var.j(text);
            Notification notification = m7Var.s;
            notification.icon = android.R.drawable.stat_sys_download;
            notification.when = jCurrentTimeMillis;
            m7Var.f = activity;
            z = true;
        } else {
            z = false;
        }
        m7 m7Var2 = this.w;
        m7Var2.k = 100;
        m7Var2.l = i;
        m7Var2.m = false;
        m7Var2.d(((Object) text) + " ... (" + (this.j + 1) + "/" + this.l + ")");
        Notification notificationB = this.w.b();
        if (z) {
            startForeground(R.id.notification_download_feed, notificationB);
        } else {
            g().notify(R.id.notification_download_feed, notificationB);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.x;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        y = this;
        this.f = Collections.synchronizedList(new ArrayList());
        int i = 0;
        while (true) {
            String[] strArr = this.h;
            if (i >= strArr.length) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("com.noinnion.android.greader.reader.action.START_START_DOWNLOADING");
                yd.a(this).b(this.e, intentFilter);
                return;
            }
            strArr[i] = "";
            i++;
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        y = null;
        yd.a(this).d(this.e);
        hx6 hx6Var = this.t;
        if (hx6Var != null) {
            Objects.requireNonNull(hx6Var);
            try {
                hx6Var.a.clear();
            } catch (NullPointerException e) {
                n56.y1("FeedDownloaderHelper.MemoryCache", e);
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        if (intent == null) {
            j();
            stopSelf();
            return;
        }
        String stringExtra = intent.getStringExtra("item_ids");
        if (stringExtra != null) {
            f(stringExtra, intent.getBooleanExtra("save_page", false));
            Context applicationContext = getApplicationContext();
            if (this.g == null) {
                this.g = fw6.a(applicationContext);
            }
            fw6 fw6Var = this.g;
            String strF = iw6.F(applicationContext, "offline_full_content_format");
            int i2 = (strF == null || strF.length() == 0) ? 3 : Integer.parseInt(strF);
            this.o = i2;
            if (!fw6Var.a) {
                i2 = 0;
            }
            this.n = i2;
            int i3 = cn6.b;
            String strF2 = iw6.F(applicationContext, "item_user_agent");
            this.p = strF2 != null && strF2.equals(String.valueOf(1));
            this.q = iw6.f(applicationContext, "offline_save_data_traffic", true);
            String strC = iw6.C(applicationContext);
            this.r = strC;
            if (strC == null) {
                this.r = Environment.getExternalStorageDirectory().getAbsolutePath();
            }
            l(0);
            int i4 = this.l;
            if (i4 > 0) {
                if (i4 == 1) {
                    i(0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                    return;
                }
                if (i4 == 2) {
                    i(0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                    i(1).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } else {
                    i(0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                    i(1).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                    i(2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                }
            }
        }
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return true;
    }
}
