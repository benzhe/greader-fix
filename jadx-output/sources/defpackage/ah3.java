package defpackage;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public class ah3 {
    public static final int A0;
    public static final int B0;
    public static final int C0;
    public static final int D0;
    public static final int E0;
    public static final int F0;
    public static final int G0;
    public static final int H0;
    public static final int I0;
    public static final int J0;
    public static final int K0;
    public static final int L0;
    public static final int M0;
    public static final int N0;
    public static final int O0;
    public static final int l0;
    public static final int m0;
    public static final int n0;
    public static final int o0;
    public static final int p0;
    public static final int q0;
    public static final int r0;
    public static final int s0;
    public static final int t0;
    public static final int u0;
    public static final int v0;
    public static final int w0;
    public static final int x0;
    public static final int y0;
    public static final int z0;
    public final int a;
    public static final int b = el3.f("ftyp");
    public static final int c = el3.f("avc1");
    public static final int d = el3.f("avc3");
    public static final int e = el3.f("hvc1");
    public static final int f = el3.f("hev1");
    public static final int g = el3.f("s263");
    public static final int h = el3.f("d263");
    public static final int i = el3.f("mdat");
    public static final int j = el3.f("mp4a");
    public static final int k = el3.f(".mp3");
    public static final int l = el3.f("wave");
    public static final int m = el3.f("lpcm");
    public static final int n = el3.f("sowt");
    public static final int o = el3.f("ac-3");
    public static final int p = el3.f("dac3");
    public static final int q = el3.f("ec-3");
    public static final int r = el3.f("dec3");
    public static final int s = el3.f("dtsc");
    public static final int t = el3.f("dtsh");
    public static final int u = el3.f("dtsl");
    public static final int v = el3.f("dtse");
    public static final int w = el3.f("ddts");
    public static final int x = el3.f("tfdt");
    public static final int y = el3.f("tfhd");
    public static final int z = el3.f("trex");
    public static final int A = el3.f("trun");
    public static final int B = el3.f("sidx");
    public static final int C = el3.f("moov");
    public static final int D = el3.f("mvhd");
    public static final int E = el3.f("trak");
    public static final int F = el3.f("mdia");
    public static final int G = el3.f("minf");
    public static final int H = el3.f("stbl");
    public static final int I = el3.f("avcC");
    public static final int J = el3.f("hvcC");
    public static final int K = el3.f("esds");
    public static final int L = el3.f("moof");
    public static final int M = el3.f("traf");
    public static final int N = el3.f("mvex");
    public static final int O = el3.f("mehd");
    public static final int P = el3.f("tkhd");
    public static final int Q = el3.f("edts");
    public static final int R = el3.f("elst");
    public static final int S = el3.f("mdhd");
    public static final int T = el3.f("hdlr");
    public static final int U = el3.f("stsd");
    public static final int V = el3.f("pssh");
    public static final int W = el3.f("sinf");
    public static final int X = el3.f("schm");
    public static final int Y = el3.f("schi");
    public static final int Z = el3.f("tenc");
    public static final int a0 = el3.f("encv");
    public static final int b0 = el3.f("enca");
    public static final int c0 = el3.f("frma");
    public static final int d0 = el3.f("saiz");
    public static final int e0 = el3.f("saio");
    public static final int f0 = el3.f("sbgp");
    public static final int g0 = el3.f("sgpd");
    public static final int h0 = el3.f("uuid");
    public static final int i0 = el3.f("senc");
    public static final int j0 = el3.f("pasp");
    public static final int k0 = el3.f("TTML");

    static {
        el3.f("vmhd");
        l0 = el3.f("mp4v");
        m0 = el3.f("stts");
        n0 = el3.f("stss");
        o0 = el3.f("ctts");
        p0 = el3.f("stsc");
        q0 = el3.f("stsz");
        r0 = el3.f("stz2");
        s0 = el3.f("stco");
        t0 = el3.f("co64");
        u0 = el3.f("tx3g");
        v0 = el3.f("wvtt");
        w0 = el3.f("stpp");
        x0 = el3.f("c608");
        y0 = el3.f("samr");
        z0 = el3.f("sawb");
        A0 = el3.f("udta");
        B0 = el3.f("meta");
        C0 = el3.f("ilst");
        D0 = el3.f("mean");
        E0 = el3.f(InetAddressKeys.KEY_NAME);
        F0 = el3.f("data");
        G0 = el3.f("emsg");
        H0 = el3.f("st3d");
        I0 = el3.f("sv3d");
        J0 = el3.f("proj");
        K0 = el3.f("vp08");
        L0 = el3.f("vp09");
        M0 = el3.f("vpcC");
        N0 = el3.f("camm");
        O0 = el3.f("alac");
    }

    public ah3(int i2) {
        this.a = i2;
    }

    public static String a(int i2) {
        char c2 = (char) (i2 >>> 24);
        char c3 = (char) ((i2 >> 16) & Base64.BASELENGTH);
        char c4 = (char) ((i2 >> 8) & Base64.BASELENGTH);
        char c5 = (char) (i2 & Base64.BASELENGTH);
        StringBuilder sb = new StringBuilder(4);
        sb.append(c2);
        sb.append(c3);
        sb.append(c4);
        sb.append(c5);
        return sb.toString();
    }

    public String toString() {
        return a(this.a);
    }
}
