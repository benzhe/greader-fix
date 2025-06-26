package defpackage;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class x92 implements qd2<y92> {
    public final zv2 a;
    public final Context b;

    public x92(zv2 zv2Var, Context context) {
        this.a = zv2Var;
        this.b = context;
    }

    @Override // defpackage.qd2
    public final aw2<y92> a() {
        return this.a.y(new Callable(this) { // from class: aa2
            public final x92 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                AudioManager audioManager = (AudioManager) this.e.b.getSystemService("audio");
                return new y92(audioManager.getMode(), audioManager.isMusicActive(), audioManager.isSpeakerphoneOn(), audioManager.getStreamVolume(3), audioManager.getRingerMode(), audioManager.getStreamVolume(2), zzr.zzla().zzrg(), zzr.zzla().zzrh());
            }
        });
    }
}
