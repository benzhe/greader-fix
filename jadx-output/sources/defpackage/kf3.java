package defpackage;

/* loaded from: classes.dex */
public final class kf3 extends Exception {
    public kf3(int i, int i2, int i3, int i4) {
        StringBuilder sb = new StringBuilder(82);
        sb.append("AudioTrack init failed: ");
        sb.append(i);
        sb.append(", Config(");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(i4);
        sb.append(")");
        super(sb.toString());
    }
}
