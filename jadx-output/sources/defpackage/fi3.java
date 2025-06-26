package defpackage;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

/* loaded from: classes.dex */
public final class fi3 implements ci3 {
    public fi3(bi3 bi3Var) {
    }

    @Override // defpackage.ci3
    public final MediaCodecInfo a(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // defpackage.ci3
    public final boolean b() {
        return false;
    }

    @Override // defpackage.ci3
    public final int c() {
        return MediaCodecList.getCodecCount();
    }

    @Override // defpackage.ci3
    public final boolean d(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "video/avc".equals(str);
    }
}
