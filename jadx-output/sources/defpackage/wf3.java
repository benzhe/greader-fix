package defpackage;

import android.media.MediaCodec;

/* loaded from: classes.dex */
public final class wf3 {
    public byte[] a;
    public byte[] b;
    public int c;
    public int[] d;
    public int[] e;
    public int f;
    public final MediaCodec.CryptoInfo g;
    public final yf3 h;

    public wf3() {
        int i = el3.a;
        MediaCodec.CryptoInfo cryptoInfo = i >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.g = cryptoInfo;
        this.h = i >= 24 ? new yf3(cryptoInfo, null) : null;
    }
}
