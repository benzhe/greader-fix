package defpackage;

import android.media.AudioTimestamp;
import android.media.AudioTrack;

/* loaded from: classes.dex */
public final class if3 extends jf3 {
    public final AudioTimestamp j;
    public long k;
    public long l;
    public long m;

    public if3() {
        super(null);
        this.j = new AudioTimestamp();
    }

    @Override // defpackage.jf3
    public final void a(AudioTrack audioTrack, boolean z) {
        super.a(audioTrack, z);
        this.k = 0L;
        this.l = 0L;
        this.m = 0L;
    }

    @Override // defpackage.jf3
    public final boolean b() {
        boolean timestamp = this.a.getTimestamp(this.j);
        if (timestamp) {
            long j = this.j.framePosition;
            if (this.l > j) {
                this.k++;
            }
            this.l = j;
            this.m = j + (this.k << 32);
        }
        return timestamp;
    }

    @Override // defpackage.jf3
    public final long c() {
        return this.j.nanoTime;
    }

    @Override // defpackage.jf3
    public final long d() {
        return this.m;
    }
}
