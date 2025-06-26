package com.google.mlkit.nl.languageid.internal;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.SystemClock;
import com.google.mlkit.nl.languageid.IdentifiedLanguage;
import defpackage.bi;
import defpackage.fj4;
import defpackage.gp4;
import defpackage.ip4;
import defpackage.jh6;
import defpackage.lh6;
import defpackage.oh4;
import defpackage.tg6;
import defpackage.uo4;
import defpackage.xp4;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Objects;

/* loaded from: classes.dex */
public class LanguageIdentificationJni extends jh6 {
    public static boolean h;
    public final Context d;
    public final fj4 e;
    public MappedByteBuffer f;
    public long g;

    public LanguageIdentificationJni(Context context, fj4 fj4Var) {
        this.d = context;
        this.e = fj4Var;
    }

    @Override // defpackage.jh6
    public void a() throws tg6, IOException {
        lh6 lh6Var = this.b;
        Objects.requireNonNull(lh6Var);
        bi.l(Thread.currentThread().equals(lh6Var.d.get()));
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            bi.l(this.g == 0);
            synchronized (LanguageIdentificationJni.class) {
                if (!h) {
                    try {
                        System.loadLibrary("language_id_jni");
                        h = true;
                    } catch (UnsatisfiedLinkError e) {
                        throw new tg6("Couldn't load language detection library.", 12, e);
                    }
                }
            }
            try {
                AssetFileDescriptor assetFileDescriptorOpenFd = this.d.getAssets().openFd("langid_model.smfb.jpg");
                try {
                    MappedByteBuffer map = new FileInputStream(assetFileDescriptorOpenFd.getFileDescriptor()).getChannel().map(FileChannel.MapMode.READ_ONLY, assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getDeclaredLength());
                    this.f = map;
                    long jNativeInit = nativeInit(map, assetFileDescriptorOpenFd.getDeclaredLength());
                    this.g = jNativeInit;
                    if (jNativeInit == 0) {
                        throw new tg6("Couldn't load language detection model", 13);
                    }
                    assetFileDescriptorOpenFd.close();
                } catch (Throwable th) {
                    if (assetFileDescriptorOpenFd != null) {
                        try {
                            assetFileDescriptorOpenFd.close();
                        } catch (Throwable th2) {
                            uo4.a.a(th, th2);
                        }
                    }
                    throw th;
                }
            } catch (IOException e2) {
                throw new tg6("Couldn't open language detection model file", 13, e2);
            }
        } catch (tg6 e3) {
            final long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
            this.e.a(new fj4.a(jElapsedRealtime2) { // from class: bi6
                public final long a;

                {
                    this.a = jElapsedRealtime2;
                }

                @Override // fj4.a
                public final gp4.a a() {
                    long j = this.a;
                    gp4.a aVarW = gp4.w();
                    xp4.a aVarP = xp4.p();
                    ip4.a aVarP2 = ip4.p();
                    if (aVarP2.g) {
                        aVarP2.f();
                        aVarP2.g = false;
                    }
                    ip4.q((ip4) aVarP2.f, j);
                    nh4 nh4Var = nh4.UNKNOWN_ERROR;
                    if (aVarP2.g) {
                        aVarP2.f();
                        aVarP2.g = false;
                    }
                    ip4.s((ip4) aVarP2.f, nh4Var);
                    aVarP.k(aVarP2);
                    aVarW.k(aVarP);
                    return aVarW;
                }
            }, oh4.ON_DEVICE_LANGUAGE_IDENTIFICATION_LOAD);
            throw e3;
        }
    }

    public final native void nativeDestroy(long j);

    public final native IdentifiedLanguage[] nativeIdentifyPossibleLanguages(long j, byte[] bArr, float f);

    public final native long nativeInit(MappedByteBuffer mappedByteBuffer, long j);
}
