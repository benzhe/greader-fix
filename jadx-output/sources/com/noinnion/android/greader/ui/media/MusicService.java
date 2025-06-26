package com.noinnion.android.greader.ui.media;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.widget.Toast;
import com.noinnion.android.greader.reader.R;
import defpackage.as6;
import defpackage.bs6;
import defpackage.jo;
import defpackage.m7;
import defpackage.n56;
import defpackage.tr6;
import defpackage.u7;
import defpackage.ur6;
import defpackage.vr6;
import defpackage.vx6;
import defpackage.xr6;
import defpackage.yr6;
import defpackage.zr6;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Objects;

/* loaded from: classes2.dex */
public class MusicService extends Service implements MediaPlayer.OnCompletionListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnErrorListener, xr6, zr6.a {
    public WifiManager.WifiLock n;
    public yr6 o;
    public as6 p;
    public Bitmap q;
    public ComponentName r;
    public AudioManager s;
    public NotificationManager t;
    public MediaPlayer e = null;
    public tr6 f = null;
    public d g = d.Retrieving;
    public boolean h = false;
    public Uri i = null;
    public c j = c.NoFocusNoDuck;
    public String k = "";
    public String l = null;
    public boolean m = false;
    public m7 u = null;
    public BroadcastReceiver v = new a();
    public final ur6.a w = new b();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws IllegalStateException, IllegalAccessException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
            String action = intent.getAction();
            if (action != null && action.equals("com.noinnion.android.greader.reader.action.PLAY")) {
                MusicService musicService = MusicService.this;
                d dVar = musicService.g;
                if (dVar == d.Paused || dVar == d.Stopped) {
                    musicService.g();
                    return;
                } else {
                    musicService.f();
                    return;
                }
            }
            if (action != null && action.equals("com.noinnion.android.greader.reader.action.REWIND")) {
                MusicService.this.h();
            } else {
                if (action == null || !action.equals("com.noinnion.android.greader.reader.action.FORWARD")) {
                    return;
                }
                MusicService.this.i();
            }
        }
    }

    public class b extends ur6.a {
        public b() {
        }

        @Override // defpackage.ur6
        public void C0(int i) throws IllegalStateException, RemoteException {
            MediaPlayer mediaPlayer = MusicService.this.e;
            if (mediaPlayer == null) {
                return;
            }
            mediaPlayer.seekTo(i);
        }

        @Override // defpackage.ur6
        public int d0() throws RemoteException {
            d dVar = MusicService.this.g;
            if (dVar == d.Preparing) {
                return 2;
            }
            if (dVar == d.Playing) {
                return 3;
            }
            if (dVar == d.Paused) {
                return 4;
            }
            return dVar == d.Stopped ? 0 : 1;
        }

        @Override // defpackage.ur6
        public int getCurrentPosition() throws RemoteException {
            MediaPlayer mediaPlayer = MusicService.this.e;
            if (mediaPlayer == null) {
                return 0;
            }
            return mediaPlayer.getCurrentPosition();
        }

        @Override // defpackage.ur6
        public int getDuration() throws RemoteException {
            MediaPlayer mediaPlayer = MusicService.this.e;
            if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
                return 0;
            }
            return MusicService.this.e.getDuration();
        }

        @Override // defpackage.ur6
        public String getTitle() throws RemoteException {
            return MusicService.this.k;
        }
    }

    public enum c {
        NoFocusNoDuck,
        NoFocusCanDuck,
        Focused
    }

    public enum d {
        Retrieving,
        Stopped,
        Preparing,
        Playing,
        Paused
    }

    public void a() throws IllegalStateException {
        c cVar = this.j;
        if (cVar == c.NoFocusNoDuck) {
            if (this.e.isPlaying()) {
                this.e.pause();
            }
        } else {
            if (cVar == c.NoFocusCanDuck) {
                this.e.setVolume(0.1f, 0.1f);
            } else {
                this.e.setVolume(1.0f, 1.0f);
            }
            if (this.e.isPlaying()) {
                return;
            }
            this.e.start();
        }
    }

    public void b() {
        tr6 tr6Var;
        if (this.j != c.Focused || (tr6Var = this.f) == null) {
            return;
        }
        Objects.requireNonNull(tr6Var);
        boolean z = false;
        try {
            if (1 == tr6Var.a.abandonAudioFocus(tr6Var)) {
                z = true;
            }
        } catch (Exception unused) {
        }
        if (z) {
            this.j = c.NoFocusNoDuck;
        }
    }

    public void c(String str, boolean z) {
        Context applicationContext = getApplicationContext();
        m7 m7Var = new m7(applicationContext, vx6.a(this, "music_service_v2", "Music Player"));
        this.u = m7Var;
        m7Var.e(applicationContext.getText(R.string.media_now_playing));
        m7Var.d(str);
        m7Var.s.tickerText = m7.c(str);
        m7Var.s.icon = R.drawable.ic_notification_media;
        m7Var.p = u7.b(applicationContext, R.color.primary_default);
        m7Var.s.when = System.currentTimeMillis();
        m7Var.f(2, true);
        m7Var.f(16, false);
        this.u.f = PendingIntent.getActivity(applicationContext, 0, jo.I(applicationContext, MusicActivity.class, 268435456), 134217728);
        this.u.a(R.drawable.ic_notify_rewind_10_24dp, "-10s", PendingIntent.getBroadcast(applicationContext, 0, new Intent("com.noinnion.android.greader.reader.action.REWIND"), 134217728));
        this.u.a(z ? R.drawable.ic_notify_pause_24dp : R.drawable.ic_notify_play_24dp, getText(z ? R.string.media_pause : R.string.media_play), PendingIntent.getBroadcast(applicationContext, 0, new Intent("com.noinnion.android.greader.reader.action.PLAY"), 134217728));
        this.u.a(R.drawable.ic_notify_forward_30_24dp, "+30s", PendingIntent.getBroadcast(applicationContext, 0, new Intent("com.noinnion.android.greader.reader.action.FORWARD"), 134217728));
    }

    public void d(boolean z) throws IllegalStateException {
        Context applicationContext = getApplicationContext();
        StringBuilder sbZ = jo.z("lost audio focus.");
        sbZ.append(z ? "can duck" : "no duck");
        Toast.makeText(applicationContext, sbZ.toString(), 0).show();
        this.j = z ? c.NoFocusCanDuck : c.NoFocusNoDuck;
        MediaPlayer mediaPlayer = this.e;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            return;
        }
        a();
    }

    public void e(String str) throws IllegalStateException, IllegalAccessException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke;
        String strDecode = Uri.decode(str);
        this.l = strDecode;
        this.g = d.Stopped;
        k(false);
        try {
            if (strDecode == null) {
                stopSelf();
                return;
            }
            MediaPlayer mediaPlayer = this.e;
            if (mediaPlayer == null) {
                MediaPlayer mediaPlayer2 = new MediaPlayer();
                this.e = mediaPlayer2;
                mediaPlayer2.setWakeMode(getApplicationContext(), 1);
                this.e.setOnPreparedListener(this);
                this.e.setOnCompletionListener(this);
                this.e.setOnErrorListener(this);
            } else {
                mediaPlayer.reset();
            }
            this.m = strDecode.startsWith("http:") || strDecode.startsWith("https:");
            this.e.setAudioStreamType(3);
            if (strDecode.startsWith("file:")) {
                this.e.setDataSource(new FileInputStream(strDecode.replace("file://", "")).getFD());
            } else {
                HashMap map = new HashMap();
                map.put("User-Agent", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24");
                this.e.setDataSource(getApplicationContext(), Uri.parse(strDecode), map);
            }
            String strSubstring = strDecode.substring(strDecode.lastIndexOf("/") + 1);
            this.k = n56.S0(strSubstring);
            this.g = d.Preparing;
            l(this.k + " (loading)", true);
            vr6.a(this.s, this.r);
            if (this.p == null) {
                Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                intent.setComponent(this.r);
                as6 as6Var = new as6(PendingIntent.getBroadcast(this, 0, intent, 0));
                this.p = as6Var;
                AudioManager audioManager = this.s;
                if (bs6.a) {
                    try {
                        bs6.b.invoke(audioManager, as6Var.a);
                    } catch (Exception e) {
                        Log.e("RemoteControlHelper", e.getMessage(), e);
                    }
                }
            }
            this.p.a(3);
            as6 as6Var2 = this.p;
            Objects.requireNonNull(as6Var2);
            if (as6.f) {
                try {
                    as6.e.invoke(as6Var2.a, 181);
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            }
            as6 as6Var3 = this.p;
            Objects.requireNonNull(as6Var3);
            if (as6.f) {
                try {
                    objInvoke = as6.c.invoke(as6Var3.a, Boolean.TRUE);
                } catch (Exception e3) {
                    throw new RuntimeException(e3);
                }
            } else {
                objInvoke = null;
            }
            as6.b bVar = new as6.b(as6Var3, objInvoke, null);
            bVar.a(2, null);
            bVar.a(1, null);
            bVar.a(7, strSubstring);
            if (as6.f) {
                try {
                    bVar.c.invoke(bVar.e, 9, 0L);
                } catch (Exception e4) {
                    throw new RuntimeException(e4.getMessage(), e4);
                }
            }
            Bitmap bitmap = this.q;
            if (as6.f) {
                try {
                    bVar.b.invoke(bVar.e, 100, bitmap);
                } catch (Exception e5) {
                    throw new RuntimeException(e5.getMessage(), e5);
                }
            }
            if (as6.f) {
                try {
                    bVar.d.invoke(bVar.e, null);
                } catch (Exception e6) {
                    throw new RuntimeException(e6.getMessage(), e6);
                }
            }
            this.e.prepareAsync();
            if (this.m) {
                this.n.acquire();
            } else if (this.n.isHeld()) {
                this.n.release();
            }
        } catch (IOException e7) {
            e7.printStackTrace();
        }
    }

    public void f() throws IllegalStateException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        c(this.k, false);
        this.t.notify(R.id.notification_music_player, this.u.b());
        d dVar = this.g;
        if (dVar == d.Retrieving) {
            this.h = false;
            return;
        }
        if (dVar == d.Playing) {
            this.g = d.Paused;
            this.e.pause();
            k(false);
        }
        as6 as6Var = this.p;
        if (as6Var != null) {
            as6Var.a(2);
        }
    }

    public void g() throws IllegalStateException, IllegalAccessException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        c(this.k, true);
        this.t.notify(R.id.notification_music_player, this.u.b());
        if (this.g == d.Retrieving) {
            this.i = null;
            this.h = true;
            return;
        }
        m();
        d dVar = this.g;
        if (dVar == d.Stopped) {
            e(this.l);
        } else if (dVar == d.Paused) {
            this.g = d.Playing;
            l(this.k, true);
            a();
        }
        as6 as6Var = this.p;
        if (as6Var != null) {
            as6Var.a(3);
        }
    }

    public void h() throws IllegalStateException {
        d dVar = this.g;
        if (dVar == d.Playing || dVar == d.Paused) {
            this.e.seekTo(r0.getCurrentPosition() - 10000);
        }
    }

    public void i() throws IllegalStateException {
        d dVar = this.g;
        if (dVar == d.Playing || dVar == d.Paused) {
            MediaPlayer mediaPlayer = this.e;
            mediaPlayer.seekTo(mediaPlayer.getCurrentPosition() + 30000);
        }
    }

    public void j(boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        d dVar = this.g;
        if (dVar == d.Playing || dVar == d.Paused || z) {
            this.g = d.Stopped;
            k(true);
            b();
            as6 as6Var = this.p;
            if (as6Var != null) {
                as6Var.a(1);
            }
            stopSelf();
        }
    }

    public void k(boolean z) {
        MediaPlayer mediaPlayer;
        stopForeground(z);
        if (z && (mediaPlayer = this.e) != null) {
            mediaPlayer.reset();
            this.e.release();
            this.e = null;
        }
        if (this.n.isHeld()) {
            this.n.release();
        }
    }

    public void l(String str, boolean z) {
        c(str, z);
        startForeground(R.id.notification_music_player, this.u.b());
    }

    public void m() {
        tr6 tr6Var;
        c cVar = c.Focused;
        if (this.j == cVar || (tr6Var = this.f) == null) {
            return;
        }
        Objects.requireNonNull(tr6Var);
        boolean z = false;
        try {
            if (1 == tr6Var.a.requestAudioFocus(tr6Var, 3, 1)) {
                z = true;
            }
        } catch (Throwable unused) {
        }
        if (z) {
            this.j = cVar;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.w;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        j(true);
    }

    @Override // android.app.Service
    public void onCreate() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.noinnion.android.greader.reader.action.PLAY");
        intentFilter.addAction("com.noinnion.android.greader.reader.action.REWIND");
        intentFilter.addAction("com.noinnion.android.greader.reader.action.FORWARD");
        registerReceiver(this.v, intentFilter);
        this.n = ((WifiManager) getApplicationContext().getSystemService("wifi")).createWifiLock(1, "mylock");
        this.t = (NotificationManager) getSystemService("notification");
        this.s = (AudioManager) getSystemService("audio");
        this.o = new yr6(getContentResolver());
        new zr6(this.o, this).execute(new Void[0]);
        this.f = new tr6(getApplicationContext(), this);
        this.q = BitmapFactory.decodeResource(getResources(), R.drawable.icon);
        this.r = new ComponentName(this, (Class<?>) MusicIntentReceiver.class);
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.g = d.Stopped;
        k(true);
        b();
        BroadcastReceiver broadcastReceiver = this.v;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
            this.v = null;
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        String strH = i == 100 ? jo.h("SERVER DIED (", i2, ")") : i == 200 ? jo.h("NOT VALID FOR PROGRESSIVE PLAYBACK (", i2, ")") : i == 1 ? jo.h("UNKNOWN (", i2, ")") : jo.h("ERROR (", i, ")");
        n56.X1(getApplicationContext(), "Media player error: " + strH);
        this.g = d.Stopped;
        k(true);
        b();
        return true;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) throws IllegalStateException {
        this.g = d.Playing;
        String str = this.k;
        m7 m7Var = this.u;
        m7Var.d(str);
        m7Var.s.tickerText = m7.c(str);
        this.t.notify(R.id.notification_music_player, this.u.b());
        a();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) throws IllegalStateException, IllegalAccessException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        d dVar = d.Stopped;
        d dVar2 = d.Paused;
        if (intent == null) {
            return 2;
        }
        c("", false);
        startForeground(R.id.notification_music_player, this.u.b());
        String action = intent.getAction();
        if (action == null) {
            return 2;
        }
        if (action.equals("com.noinnion.android.greader.reader.action.URL") || action.equals("com.noinnion.android.greader.reader.action.PATH")) {
            d dVar3 = this.g;
            if (dVar3 == d.Retrieving) {
                this.i = intent.getData();
                this.h = true;
            } else if (dVar3 == d.Playing || dVar3 == dVar2 || dVar3 == dVar) {
                m();
                e(intent.getData().toString());
            }
        } else if (this.l != null) {
            if (action.equals("com.noinnion.android.greader.reader.action.TOGGLE_PLAYBACK")) {
                d dVar4 = this.g;
                if (dVar4 == dVar2 || dVar4 == dVar) {
                    g();
                } else {
                    f();
                }
            } else if (action.equals("com.noinnion.android.greader.reader.action.PLAY")) {
                g();
            } else if (action.equals("com.noinnion.android.greader.reader.action.PAUSE")) {
                f();
            } else if (action.equals("com.noinnion.android.greader.reader.action.FORWARD")) {
                i();
            } else if (action.equals("com.noinnion.android.greader.reader.action.STOP")) {
                j(true);
            } else if (action.equals("com.noinnion.android.greader.reader.action.REWIND")) {
                h();
            }
        }
        return 2;
    }
}
