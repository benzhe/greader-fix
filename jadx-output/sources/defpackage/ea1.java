package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.nio.ByteBuffer;
import java.util.Date;

/* loaded from: classes.dex */
public final class ea1 extends pa3 implements d91 {
    public int m;
    public Date n;
    public Date o;
    public long p;
    public long q;
    public double r;
    public float s;
    public ya3 t;
    public long u;

    public ea1() {
        super("mvhd");
        this.r = 1.0d;
        this.s = 1.0f;
        this.t = ya3.j;
    }

    @Override // defpackage.pa3
    public final void e(ByteBuffer byteBuffer) {
        int i = byteBuffer.get();
        if (i < 0) {
            i += RecyclerView.a0.FLAG_TMP_DETACHED;
        }
        this.m = i;
        c50.a4(byteBuffer);
        byteBuffer.get();
        if (!this.f) {
            d();
        }
        if (this.m == 1) {
            this.n = c50.Z3(c50.j4(byteBuffer));
            this.o = c50.Z3(c50.j4(byteBuffer));
            this.p = c50.W3(byteBuffer);
            this.q = c50.j4(byteBuffer);
        } else {
            this.n = c50.Z3(c50.W3(byteBuffer));
            this.o = c50.Z3(c50.W3(byteBuffer));
            this.p = c50.W3(byteBuffer);
            this.q = c50.W3(byteBuffer);
        }
        this.r = c50.o4(byteBuffer);
        byteBuffer.get(new byte[2]);
        this.s = ((short) ((r1[1] & 255) | ((short) (0 | ((r1[0] << 8) & 65280))))) / 256.0f;
        c50.a4(byteBuffer);
        c50.W3(byteBuffer);
        c50.W3(byteBuffer);
        this.t = new ya3(c50.o4(byteBuffer), c50.o4(byteBuffer), c50.o4(byteBuffer), c50.o4(byteBuffer), c50.u4(byteBuffer), c50.u4(byteBuffer), c50.u4(byteBuffer), c50.o4(byteBuffer), c50.o4(byteBuffer));
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.u = c50.W3(byteBuffer);
    }

    public final String toString() {
        StringBuilder sbB = jo.B("MovieHeaderBox[", "creationTime=");
        sbB.append(this.n);
        sbB.append(";");
        sbB.append("modificationTime=");
        sbB.append(this.o);
        sbB.append(";");
        sbB.append("timescale=");
        sbB.append(this.p);
        sbB.append(";");
        sbB.append("duration=");
        sbB.append(this.q);
        sbB.append(";");
        sbB.append("rate=");
        sbB.append(this.r);
        sbB.append(";");
        sbB.append("volume=");
        sbB.append(this.s);
        sbB.append(";");
        sbB.append("matrix=");
        sbB.append(this.t);
        sbB.append(";");
        sbB.append("nextTrackId=");
        return jo.r(sbB, this.u, "]");
    }
}
