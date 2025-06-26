package defpackage;

import android.media.AudioTrack;
import android.os.SystemClock;

/* loaded from: classes.dex */
public class jf3 {
    public AudioTrack a;
    public boolean b;
    public int c;
    public long d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;

    public jf3(gf3 gf3Var) {
    }

    public void a(AudioTrack audioTrack, boolean z) {
        this.a = audioTrack;
        this.b = z;
        this.g = -9223372036854775807L;
        this.d = 0L;
        this.e = 0L;
        this.f = 0L;
        if (audioTrack != null) {
            this.c = audioTrack.getSampleRate();
        }
    }

    public boolean b() {
        return false;
    }

    public long c() {
        throw new UnsupportedOperationException();
    }

    public long d() {
        throw new UnsupportedOperationException();
    }

    public final long e() {
        if (this.g != -9223372036854775807L) {
            return Math.min(this.i, this.h + ((((SystemClock.elapsedRealtime() * 1000) - this.g) * this.c) / 1000000));
        }
        int playState = this.a.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = 4294967295L & this.a.getPlaybackHeadPosition();
        if (this.b) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f = this.d;
            }
            playbackHeadPosition += this.f;
        }
        if (this.d > playbackHeadPosition) {
            this.e++;
        }
        this.d = playbackHeadPosition;
        return playbackHeadPosition + (this.e << 32);
    }
}
