package defpackage;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

/* loaded from: classes.dex */
public final class ei3 implements ci3 {
    public final int a;
    public MediaCodecInfo[] b;

    public ei3(boolean z) {
        this.a = z ? 1 : 0;
    }

    @Override // defpackage.ci3
    public final MediaCodecInfo a(int i) {
        if (this.b == null) {
            this.b = new MediaCodecList(this.a).getCodecInfos();
        }
        return this.b[i];
    }

    @Override // defpackage.ci3
    public final boolean b() {
        return true;
    }

    @Override // defpackage.ci3
    public final int c() {
        if (this.b == null) {
            this.b = new MediaCodecList(this.a).getCodecInfos();
        }
        return this.b.length;
    }

    @Override // defpackage.ci3
    public final boolean d(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }
}
