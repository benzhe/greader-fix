package com.noinnion.android.greader.service;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.IBinder;
import android.os.RemoteException;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.noinnion.android.greader.client.rss.syndication.namespace.atom.AtomText;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.tts.TtsActivity;
import defpackage.ac7;
import defpackage.ap6;
import defpackage.ay6;
import defpackage.bj7;
import defpackage.ec7;
import defpackage.eh7;
import defpackage.ej7;
import defpackage.ek7;
import defpackage.hc7;
import defpackage.ic7;
import defpackage.ih7;
import defpackage.im7;
import defpackage.iw6;
import defpackage.jm7;
import defpackage.jo;
import defpackage.jx6;
import defpackage.kv6;
import defpackage.m7;
import defpackage.mh7;
import defpackage.n56;
import defpackage.on6;
import defpackage.op6;
import defpackage.pl7;
import defpackage.pp6;
import defpackage.rh7;
import defpackage.u7;
import defpackage.uc7;
import defpackage.yd;
import defpackage.yj7;
import defpackage.yn7;
import defpackage.zb7;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class TtsService extends Service implements TextToSpeech.OnInitListener {
    public static TextToSpeech A;
    public static TtsService B;
    public static boolean C;
    public boolean e;
    public boolean f;
    public int h;
    public int i;
    public long l;
    public int m;
    public ArrayList<String> p;
    public ArrayList<String> q;
    public Locale r;
    public NotificationManager s;
    public m7 t;
    public boolean u;
    public boolean v;
    public TtsActionReceiver w;
    public PhoneStateReceiver x;
    public final ArrayList<ArrayList<String>> g = new ArrayList<>();
    public int j = 1;
    public final LinkedList<kv6> k = new LinkedList<>();
    public String n = "";
    public ArrayList<String> o = new ArrayList<>();
    public final hc7 y = new hc7();
    public final op6.a z = new f();

    public final class PhoneStateReceiver extends BroadcastReceiver {
        public PhoneStateReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            im7.e(context, "context");
            im7.e(intent, "intent");
            String stringExtra = intent.getStringExtra("state");
            if (stringExtra == null || !im7.a(stringExtra, TelephonyManager.EXTRA_STATE_RINGING)) {
                return;
            }
            TtsService ttsService = TtsService.this;
            Objects.requireNonNull(ttsService);
            TtsService.C = false;
            ttsService.k();
            TextToSpeech textToSpeech = TtsService.A;
            if (textToSpeech != null) {
                ttsService.j = 0;
                textToSpeech.stop();
            }
        }
    }

    public final class TtsActionReceiver extends BroadcastReceiver {
        public TtsActionReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            im7.e(context, "context");
            im7.e(intent, "intent");
            String action = intent.getAction();
            if (action != null && im7.a(action, "com.noinnion.android.greader.reader.action.INIT_PREFERENCES")) {
                TtsService ttsService = TtsService.this;
                TextToSpeech textToSpeech = TtsService.A;
                ttsService.e();
                return;
            }
            if (action != null && im7.a(action, "com.noinnion.android.greader.reader.action.MEDIA_PLAY_PAUSE")) {
                TtsService.this.h();
                return;
            }
            if (action != null && im7.a(action, "com.noinnion.android.greader.reader.action.MEDIA_NEXT_ITEM")) {
                TtsService ttsService2 = TtsService.this;
                TextToSpeech textToSpeech2 = TtsService.A;
                ttsService2.m(true);
            } else {
                if (action == null || !im7.a(action, "com.noinnion.android.greader.reader.action.MEDIA_NEXT_PARAGRAPH")) {
                    return;
                }
                TtsService ttsService3 = TtsService.this;
                Objects.requireNonNull(ttsService3);
                TextToSpeech textToSpeech3 = TtsService.A;
                if (textToSpeech3 != null) {
                    ttsService3.j = 5;
                    textToSpeech3.stop();
                }
            }
        }
    }

    public final class a extends UtteranceProgressListener {
        public a() {
        }

        @Override // android.speech.tts.UtteranceProgressListener
        public void onDone(String str) throws NumberFormatException {
            im7.e(str, "utteranceId");
            TtsService ttsService = TtsService.this;
            int i = ttsService.j;
            ttsService.j = 1;
            if (i != 2) {
                if (i == -1) {
                    ttsService.h = 0;
                    ttsService.i = 0;
                    return;
                }
                Object[] array = new yn7("-").b(str, 0).toArray(new String[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                String[] strArr = (String[]) array;
                ttsService.h = Integer.parseInt(strArr[0]);
                int i2 = Integer.parseInt(strArr[1]);
                ttsService.i = i2;
                if (i != 1) {
                    if (i == 5) {
                        if (ttsService.h < ttsService.g.size() - 1) {
                            ttsService.l(ttsService.h + 1, 0);
                            return;
                        } else {
                            ttsService.m(true);
                            return;
                        }
                    }
                    if (i != 6) {
                        return;
                    }
                    if (i2 == 0) {
                        int i3 = ttsService.h;
                        ttsService.h = i3 > 0 ? i3 - 1 : 0;
                    }
                    ttsService.l(ttsService.h, 0);
                    return;
                }
                if (ttsService.g.size() == 0) {
                    ttsService.h = -1;
                    ttsService.i = -1;
                } else if (ttsService.i >= ttsService.g.get(ttsService.h).size() - 1) {
                    int i4 = ttsService.h + 1;
                    ttsService.h = i4;
                    ttsService.i = 0;
                    if (i4 > ttsService.g.size() - 1) {
                        ttsService.h = -1;
                        ttsService.i = -1;
                    }
                } else {
                    ttsService.i++;
                }
                if (ttsService.h == -1 && ttsService.i == -1) {
                    ttsService.m(false);
                } else {
                    ttsService.j();
                }
            }
        }

        @Override // android.speech.tts.UtteranceProgressListener
        public void onError(String str) {
            im7.e(str, "utteranceId");
        }

        @Override // android.speech.tts.UtteranceProgressListener
        public void onStart(String str) {
            im7.e(str, "utteranceId");
        }

        @Override // android.speech.tts.UtteranceProgressListener
        public void onStop(String str, boolean z) throws NumberFormatException {
            im7.e(str, "utteranceId");
            if (z) {
                onDone(str);
            }
        }
    }

    public static final class b<V> implements Callable<kv6> {
        public final /* synthetic */ kv6 f;

        public b(kv6 kv6Var) {
            this.f = kv6Var;
        }

        @Override // java.util.concurrent.Callable
        public kv6 call() throws IllegalAccessException {
            Context applicationContext = TtsService.this.getApplicationContext();
            TtsService ttsService = TtsService.this;
            long j = this.f.a;
            ttsService.l = j;
            Intent intent = new Intent("com.noinnion.android.greader.reader.action.NEW_ITEM");
            intent.putExtra("itemId", j);
            yd.a(ttsService).c(intent);
            ap6 ap6VarL = ap6.l(applicationContext, this.f.a, false);
            if (ap6VarL == null) {
                throw new IllegalAccessException("item not available");
            }
            kv6 kv6Var = this.f;
            kv6Var.c = ap6VarL;
            return kv6Var;
        }
    }

    public static final class c<T, R> implements uc7<kv6, ec7<? extends kv6>> {
        public final /* synthetic */ kv6 f;

        public c(kv6 kv6Var) {
            this.f = kv6Var;
        }

        @Override // defpackage.uc7
        public ec7<? extends kv6> apply(kv6 kv6Var) {
            kv6 kv6Var2 = kv6Var;
            im7.e(kv6Var2, "it");
            if (!iw6.f(TtsService.this.getApplicationContext(), "service_tts_auto_detect_language", true)) {
                return ac7.d(this.f);
            }
            String str = kv6Var2.c.h + StringUtils.SPACE + n56.l2(kv6Var2.c.i);
            im7.e(str, AtomText.TYPE_TEXT);
            eh7 eh7Var = new eh7(new ay6(str));
            im7.d(eh7Var, "Single.create { emiter -…              }\n        }");
            return eh7Var.e(new pp6(this));
        }
    }

    public static final class d extends jm7 implements pl7<kv6, yj7> {
        public final /* synthetic */ kv6 f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(kv6 kv6Var) {
            super(1);
            this.f = kv6Var;
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x00d5  */
        @Override // defpackage.pl7
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public defpackage.yj7 invoke(defpackage.kv6 r17) {
            /*
                Method dump skipped, instructions count: 695
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.service.TtsService.d.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public static final class e extends jm7 implements pl7<Throwable, yj7> {
        public e() {
            super(1);
        }

        @Override // defpackage.pl7
        public yj7 invoke(Throwable th) {
            im7.e(th, "throwable");
            n56.X1(TtsService.this.getApplicationContext(), TtsService.this.getString(R.string.tts_no_data));
            TtsService.this.m(true);
            return yj7.a;
        }
    }

    public static final class f extends op6.a {
        public f() {
        }

        @Override // defpackage.op6
        public void E2(int i) throws RemoteException {
            TtsService ttsService = TtsService.this;
            ttsService.m = i;
            kv6 kv6Var = ttsService.k.get(i);
            im7.d(kv6Var, "mPlayList[position]");
            ttsService.c(kv6Var);
        }

        @Override // defpackage.op6
        public void F2() throws RemoteException {
            TtsService ttsService = TtsService.this;
            Objects.requireNonNull(ttsService);
            TextToSpeech textToSpeech = TtsService.A;
            if (textToSpeech != null) {
                ttsService.j = 5;
                textToSpeech.stop();
            }
        }

        @Override // defpackage.op6
        public void J() throws RemoteException {
            TtsService.this.h();
        }

        @Override // defpackage.op6
        public void J2() throws RemoteException {
            int i;
            TtsService ttsService = TtsService.this;
            if (ttsService.k.size() == 0 || (i = ttsService.m) == 0 || i - 1 > ttsService.k.size() - 1) {
                return;
            }
            ttsService.n();
            int i2 = ttsService.m - 1;
            ttsService.m = i2;
            kv6 kv6Var = ttsService.k.get(i2);
            im7.d(kv6Var, "mPlayList[mCurrentPosition]");
            ttsService.c(kv6Var);
        }

        @Override // defpackage.op6
        public void K3() throws RemoteException {
            TtsService ttsService = TtsService.this;
            Objects.requireNonNull(ttsService);
            TextToSpeech textToSpeech = TtsService.A;
            if (textToSpeech != null) {
                ttsService.j = 6;
                textToSpeech.stop();
            }
        }

        @Override // defpackage.op6
        public void N1(int i) throws RemoteException {
            TtsService.this.l(i, 0);
        }

        @Override // defpackage.op6
        public void V4(String str) throws RemoteException {
            im7.e(str, "lang");
            TtsService.this.n();
            TtsService.this.r = jx6.a(str);
            TextToSpeech textToSpeech = TtsService.A;
            if (textToSpeech != null) {
                textToSpeech.setLanguage(TtsService.this.r);
            }
            TtsService.this.l(0, 0);
        }

        @Override // defpackage.op6
        public boolean X1() throws RemoteException {
            return TtsService.this.g();
        }

        @Override // defpackage.op6
        public void Z3() throws RemoteException {
            TtsService ttsService = TtsService.this;
            if (ttsService.e) {
                Intent intent = new Intent("com.noinnion.android.greader.reader.action.INIT_LANGUAGE");
                intent.putExtra("ttsAvailableVoices", ttsService.q);
                yd.a(ttsService).c(intent);
                TtsService.this.i();
                TtsService.this.j();
            }
        }

        @Override // defpackage.op6
        public long c3() throws RemoteException {
            return TtsService.this.l;
        }

        @Override // defpackage.op6
        public void f2() throws RemoteException {
            TtsService ttsService = TtsService.this;
            TextToSpeech textToSpeech = TtsService.A;
            ttsService.m(true);
        }

        @Override // defpackage.op6
        public List<String> i3() throws RemoteException {
            ArrayList arrayList = new ArrayList();
            Iterator<kv6> it = TtsService.this.k.iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(it.next().a));
            }
            return arrayList;
        }

        @Override // defpackage.op6
        public void m(int i, int i2) throws RemoteException {
            kv6 kv6Var = TtsService.this.k.get(i);
            im7.d(kv6Var, "mPlayList[from]");
            kv6 kv6Var2 = kv6Var;
            TtsService.this.k.remove(kv6Var2);
            TtsService.this.k.add(i2, kv6Var2);
            if (i < i2) {
                TtsService ttsService = TtsService.this;
                int i3 = ttsService.m;
                if (i3 == i) {
                    ttsService.m = i2 - 1;
                    return;
                } else {
                    if (i3 <= i || i3 >= i2) {
                        return;
                    }
                    ttsService.m = i3 - 1;
                    return;
                }
            }
            if (i > i2) {
                TtsService ttsService2 = TtsService.this;
                int i4 = ttsService2.m;
                if (i4 == i) {
                    ttsService2.m = i2;
                } else {
                    if (i4 <= i2 || i4 >= i) {
                        return;
                    }
                    ttsService2.m = i4 + 1;
                }
            }
        }

        @Override // defpackage.op6
        public boolean p3() throws RemoteException {
            TtsService ttsService = TtsService.this;
            if (ttsService.e) {
                if (TtsService.A == null) {
                    return true;
                }
                if (!ttsService.g()) {
                    if (TtsService.this.k.size() == 0) {
                        return true;
                    }
                    TtsService ttsService2 = TtsService.this;
                    if (ttsService2.m >= ttsService2.k.size() - 1) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // defpackage.op6
        public void remove(int i) throws RemoteException {
            TtsService.this.k.remove(i);
            TtsService ttsService = TtsService.this;
            int i2 = ttsService.m;
            if (i2 > i) {
                ttsService.m = i2 - 1;
            }
        }

        @Override // defpackage.op6
        public void stop() throws RemoteException {
            TtsService ttsService = TtsService.this;
            ttsService.f = true;
            ttsService.stopSelf();
        }
    }

    public static final boolean b() {
        TtsService ttsService = B;
        return ttsService != null && ttsService.e;
    }

    public final void a(long[] jArr) {
        if (jArr != null) {
            if (jArr.length == 0) {
                return;
            }
            for (long j : jArr) {
                kv6 kv6Var = new kv6(j, null);
                if (!this.k.contains(kv6Var)) {
                    this.k.add(kv6Var);
                }
            }
        }
    }

    public final void c(kv6 kv6Var) {
        im7.e(kv6Var, "playListItem");
        C = false;
        this.o.clear();
        this.g.clear();
        this.h = 0;
        this.i = 0;
        mh7 mh7Var = new mh7(new b(kv6Var));
        zb7 zb7Var = ej7.a;
        ac7<T> ac7VarF = new rh7(new ih7(mh7Var.f(zb7Var), new c(kv6Var)), zb7Var).f(ej7.b);
        im7.d(ac7VarF, "Single.fromCallable {\n  …bserveOn(Schedulers.io())");
        ic7 ic7VarF = bj7.f(ac7VarF, new e(), new d(kv6Var));
        hc7 hc7Var = this.y;
        im7.f(ic7VarF, "$this$addTo");
        im7.f(hc7Var, "compositeDisposable");
        hc7Var.b(ic7VarF);
    }

    public final void d(String str, boolean z) {
        Context applicationContext = getApplicationContext();
        im7.e(this, "context");
        String str2 = "tts_service_v2";
        im7.e("tts_service_v2", "channelId");
        im7.e("Text to Speech", "channelName");
        im7.e(this, "context");
        im7.e("tts_service_v2", "channelId");
        im7.e("Text to Speech", "channelName");
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel("tts_service_v2", "Text to Speech", 3);
            notificationChannel.setSound(null, null);
            Object systemService = getSystemService("notification");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            ((NotificationManager) systemService).createNotificationChannel(notificationChannel);
        } else {
            str2 = "";
        }
        m7 m7Var = new m7(applicationContext, str2);
        m7Var.e(applicationContext.getText(R.string.tts_now_listening));
        m7Var.d(str);
        m7Var.s.tickerText = m7.c(str);
        m7Var.s.icon = R.drawable.ic_notification_tts;
        m7Var.p = u7.b(applicationContext, R.color.primary_default);
        m7Var.s.when = System.currentTimeMillis();
        m7Var.f(2, true);
        m7Var.f(16, false);
        m7Var.g = this.k.size();
        m7Var.f = PendingIntent.getActivity(applicationContext, 0, jo.I(applicationContext, TtsActivity.class, 268435456), 134217728);
        m7Var.a(z ? R.drawable.ic_notify_pause_24dp : R.drawable.ic_notify_play_24dp, getText(z ? R.string.media_pause : R.string.media_play), PendingIntent.getBroadcast(applicationContext, 0, new Intent("com.noinnion.android.greader.reader.action.MEDIA_PLAY_PAUSE"), 134217728));
        m7Var.a(R.drawable.ic_notify_forward_24dp, getText(R.string.media_next_paragraph), PendingIntent.getBroadcast(applicationContext, 0, new Intent("com.noinnion.android.greader.reader.action.MEDIA_NEXT_PARAGRAPH"), 134217728));
        m7Var.a(R.drawable.ic_notify_next_24dp, getText(R.string.media_next_article), PendingIntent.getBroadcast(applicationContext, 0, new Intent("com.noinnion.android.greader.reader.action.MEDIA_NEXT_ITEM"), 134217728));
        this.t = m7Var;
    }

    public final void e() {
        Context applicationContext = getApplicationContext();
        this.u = iw6.f(applicationContext, "service_tts_read_title", false);
        this.v = iw6.f(applicationContext, "service_tts_mark_read", false);
    }

    public final void f() {
        if (A == null) {
            TextToSpeech textToSpeech = new TextToSpeech(getApplicationContext(), this);
            textToSpeech.setOnUtteranceProgressListener(new a());
            A = textToSpeech;
        }
    }

    public final boolean g() {
        TextToSpeech textToSpeech = A;
        if (textToSpeech == null || textToSpeech == null) {
            return false;
        }
        return textToSpeech.isSpeaking();
    }

    public final void h() {
        if (A != null) {
            if (!g()) {
                l(this.h, this.i);
                return;
            }
            C = false;
            k();
            TextToSpeech textToSpeech = A;
            if (textToSpeech != null) {
                this.j = 0;
                textToSpeech.stop();
            }
        }
    }

    public final void i() {
        Intent intent = new Intent("com.noinnion.android.greader.reader.action.INIT_ITEM");
        intent.putExtra("ttsTextArray", this.o);
        intent.putExtra("ttsTitle", this.n);
        yd.a(this).c(intent);
    }

    public final void j() {
        Intent intent = new Intent("com.noinnion.android.greader.reader.action.STATUS_CHANGED");
        intent.putExtra("ttsCurrParagraph", this.h);
        intent.putExtra("ttsCurrSentence", this.i);
        intent.putExtra("ttsIsSpeaking", C);
        yd.a(this).c(intent);
    }

    public final void k() {
        NotificationManager notificationManager;
        d(this.n, false);
        m7 m7Var = this.t;
        if (m7Var == null || (notificationManager = this.s) == null) {
            return;
        }
        notificationManager.notify(R.id.notification_tts, m7Var.b());
    }

    public final void l(int i, int i2) {
        NotificationManager notificationManager;
        C = true;
        d(this.n, true);
        m7 m7Var = this.t;
        if (m7Var != null && (notificationManager = this.s) != null) {
            notificationManager.notify(R.id.notification_tts, m7Var.b());
        }
        this.h = i;
        this.i = i2;
        f();
        int size = this.g.size();
        boolean z = true;
        while (i < size) {
            ArrayList<String> arrayList = this.g.get(i);
            im7.d(arrayList, "mParagraphs[i]");
            ArrayList<String> arrayList2 = arrayList;
            int i3 = z ? i2 : 0;
            while (i3 < arrayList2.size()) {
                String str = arrayList2.get(i3);
                im7.d(str, "par[j]");
                String str2 = str;
                HashMap<String, String> map = new HashMap<>();
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                sb.append('-');
                sb.append(i3);
                map.put("utteranceId", sb.toString());
                if (z) {
                    TextToSpeech textToSpeech = A;
                    if (textToSpeech != null) {
                        textToSpeech.speak(str2, 0, map);
                    }
                    z = false;
                } else {
                    TextToSpeech textToSpeech2 = A;
                    if (textToSpeech2 != null) {
                        textToSpeech2.speak(str2, 1, map);
                    }
                }
                i3++;
            }
            TextToSpeech textToSpeech3 = A;
            if (textToSpeech3 != null) {
                textToSpeech3.playSilence(i3 == arrayList2.size() - 1 ? 1000 : 400, 1, null);
            }
            i++;
        }
        j();
    }

    public final void m(boolean z) {
        Context applicationContext;
        ap6 ap6VarL;
        if (this.v && this.l > 0 && (ap6VarL = ap6.l((applicationContext = getApplicationContext()), this.l, false)) != null) {
            on6.i(applicationContext).B(new long[]{ap6VarL.e}, null, new long[]{ap6VarL.g}, false, false);
        }
        if (this.k.size() == 0 || this.m + 1 > this.k.size() - 1) {
            C = false;
            this.h = 0;
            this.i = 0;
            j();
            k();
            stopSelf();
            return;
        }
        if (z) {
            n();
        }
        int i = this.m + 1;
        this.m = i;
        kv6 kv6Var = this.k.get(i);
        im7.d(kv6Var, "mPlayList[mCurrentPosition]");
        c(kv6Var);
    }

    public final void n() {
        C = false;
        TextToSpeech textToSpeech = A;
        if (textToSpeech != null) {
            this.j = 2;
            if (textToSpeech != null) {
                textToSpeech.stop();
            }
        }
    }

    public final void o(String str, String str2) {
        m7 m7Var = this.t;
        if (m7Var != null) {
            m7Var.d(str);
            m7Var.g = this.k.size();
            if (TextUtils.isEmpty(str2)) {
                m7Var.j(str2);
            }
            NotificationManager notificationManager = this.s;
            if (notificationManager != null) {
                notificationManager.notify(R.id.notification_tts, m7Var.b());
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        im7.e(intent, "intent");
        return this.z;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        B = this;
        Object systemService = getSystemService("notification");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        this.s = (NotificationManager) systemService;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.noinnion.android.greader.reader.action.INIT_PREFERENCES");
        intentFilter.addAction("com.noinnion.android.greader.reader.action.MEDIA_PLAY_PAUSE");
        intentFilter.addAction("com.noinnion.android.greader.reader.action.MEDIA_NEXT_ITEM");
        intentFilter.addAction("com.noinnion.android.greader.reader.action.MEDIA_NEXT_PARAGRAPH");
        TtsActionReceiver ttsActionReceiver = new TtsActionReceiver();
        this.w = ttsActionReceiver;
        registerReceiver(ttsActionReceiver, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter("android.intent.action.PHONE_STATE");
        PhoneStateReceiver phoneStateReceiver = new PhoneStateReceiver();
        this.x = phoneStateReceiver;
        registerReceiver(phoneStateReceiver, intentFilter2);
        e();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.y.d();
        TtsActionReceiver ttsActionReceiver = this.w;
        if (ttsActionReceiver != null) {
            unregisterReceiver(ttsActionReceiver);
        }
        PhoneStateReceiver phoneStateReceiver = this.x;
        if (phoneStateReceiver != null) {
            unregisterReceiver(phoneStateReceiver);
        }
        TextToSpeech textToSpeech = A;
        if (textToSpeech != null) {
            if (textToSpeech != null) {
                textToSpeech.stop();
            }
            TextToSpeech textToSpeech2 = A;
            if (textToSpeech2 != null) {
                textToSpeech2.shutdown();
            }
            A = null;
        }
        B = null;
        super.onDestroy();
    }

    @Override // android.speech.tts.TextToSpeech.OnInitListener
    public void onInit(int i) {
        String lowerCase;
        if (i == 0) {
            ArrayList<String> arrayList = this.p;
            boolean z = false;
            if (arrayList != null && arrayList.size() != 0) {
                Context applicationContext = getApplicationContext();
                String strF = iw6.F(applicationContext, "service_tts_default_locale");
                Locale localeA = strF != null ? jx6.a(strF) : null;
                this.r = localeA;
                if (localeA != null) {
                    String strB = jx6.b(localeA);
                    Objects.requireNonNull(strB, "null cannot be cast to non-null type java.lang.String");
                    lowerCase = strB.toLowerCase();
                    im7.d(lowerCase, "(this as java.lang.String).toLowerCase()");
                } else {
                    lowerCase = null;
                }
                this.q = new ArrayList<>();
                Iterator<String> it = arrayList.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    im7.d(next, "voice");
                    Locale localeA2 = jx6.a(next);
                    if (A == null) {
                        A = new TextToSpeech(applicationContext, this);
                    }
                    TextToSpeech textToSpeech = A;
                    if ((textToSpeech != null ? textToSpeech.isLanguageAvailable(localeA2) : -2) >= 0) {
                        String strB2 = jx6.b(localeA2);
                        ArrayList<String> arrayList2 = this.q;
                        if (arrayList2 != null) {
                            arrayList2.add(strB2);
                        }
                        Objects.requireNonNull(strB2, "null cannot be cast to non-null type java.lang.String");
                        String lowerCase2 = strB2.toLowerCase();
                        im7.d(lowerCase2, "(this as java.lang.String).toLowerCase()");
                        if (im7.a(lowerCase2, lowerCase)) {
                            this.r = localeA2;
                        }
                    }
                }
                ArrayList<String> arrayList3 = this.q;
                if ((arrayList3 != null ? arrayList3.size() : 0) != 0) {
                    if (this.r == null) {
                        ArrayList<String> arrayList4 = this.q;
                        String str = arrayList4 != null ? (String) ek7.g(arrayList4) : null;
                        if (str != null) {
                            this.r = jx6.a(str);
                        }
                    }
                    Intent intent = new Intent("com.noinnion.android.greader.reader.action.INIT_LANGUAGE");
                    intent.putExtra("ttsAvailableVoices", this.q);
                    yd.a(this).c(intent);
                    z = true;
                }
            }
            if (!z) {
                n56.X1(this, getString(R.string.tts_no_languages));
                yd.a(this).c(new Intent("com.noinnion.android.greader.reader.action.STOP_SERVICE"));
                stopSelf();
                return;
            }
            TextToSpeech textToSpeech2 = A;
            if (textToSpeech2 != null && textToSpeech2 != null) {
                textToSpeech2.setLanguage(this.r);
            }
            d(this.n, true);
            m7 m7Var = this.t;
            if (m7Var != null) {
                startForeground(R.id.notification_tts, m7Var.b());
            }
            if (this.k.size() <= 0 || this.m >= this.k.size()) {
                n56.X1(this, getString(R.string.tts_no_data));
                yd.a(this).c(new Intent("com.noinnion.android.greader.reader.action.STOP_SERVICE"));
                stopSelf();
            } else {
                kv6 kv6Var = this.k.get(this.m);
                im7.d(kv6Var, "mPlayList[mCurrentPosition]");
                c(kv6Var);
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        im7.e(intent, "intent");
        Context applicationContext = getApplicationContext();
        long longExtra = intent.getLongExtra("itemId", 0L);
        kv6 kv6Var = longExtra > 0 ? new kv6(longExtra, intent.getStringExtra("ttsUrl")) : null;
        String action = intent.getAction();
        if (action != null) {
            im7.d(action, "intent.action ?: return START_NOT_STICKY");
            if (im7.a(action, "com.noinnion.android.greader.reader.action.INIT_TTS")) {
                this.p = intent.getStringArrayListExtra("ttsAvailableVoices");
                String stringExtra = intent.getStringExtra("ttsTitle");
                if (stringExtra == null) {
                    stringExtra = "";
                }
                this.n = stringExtra;
                if (kv6Var != null) {
                    this.k.add(kv6Var);
                }
                a(intent.getLongArrayExtra("itemIds"));
                TextToSpeech textToSpeech = A;
                if (textToSpeech != null) {
                    textToSpeech.stop();
                    TextToSpeech textToSpeech2 = A;
                    if (textToSpeech2 != null) {
                        textToSpeech2.shutdown();
                    }
                    A = null;
                }
            } else if (im7.a(action, "com.noinnion.android.greader.reader.action.APPEND")) {
                if (kv6Var != null && !this.k.contains(kv6Var)) {
                    this.k.add(kv6Var);
                }
                a(intent.getLongArrayExtra("itemIds"));
                n56.X1(applicationContext, getString(R.string.tts_appended_to_playlist));
                o(this.n, null);
            } else if (im7.a(action, "com.noinnion.android.greader.reader.action.PlAY_NOW")) {
                if (kv6Var != null && !this.k.contains(kv6Var)) {
                    this.k.add(this.m + 1, kv6Var);
                    m(true);
                    o(this.n, null);
                }
            } else if (im7.a(action, "com.noinnion.android.greader.reader.action.PlAY_NEXT")) {
                if (kv6Var != null && !this.k.contains(kv6Var)) {
                    this.k.add(this.m + 1, kv6Var);
                }
                o(this.n, null);
            }
            f();
        }
        return 2;
    }
}
