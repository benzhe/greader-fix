package defpackage;

import android.media.AudioTrack;

/* loaded from: classes.dex */
public final class gf3 extends Thread {
    public final /* synthetic */ AudioTrack e;
    public final /* synthetic */ hf3 f;

    public gf3(hf3 hf3Var, AudioTrack audioTrack) {
        this.f = hf3Var;
        this.e = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            this.e.flush();
            this.e.release();
        } finally {
            this.f.e.open();
        }
    }
}
