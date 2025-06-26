package defpackage;

import android.util.Log;
import com.google.android.gms.internal.ads.zzmj;
import com.google.android.gms.internal.ads.zzmn;
import com.google.android.gms.internal.ads.zzmo;

/* loaded from: classes.dex */
public final class lh3 {
    public static final int a = el3.f("nam");
    public static final int b = el3.f("trk");
    public static final int c = el3.f("cmt");
    public static final int d = el3.f("day");
    public static final int e = el3.f("ART");
    public static final int f = el3.f("too");
    public static final int g = el3.f("alb");
    public static final int h = el3.f("com");
    public static final int i = el3.f("wrt");
    public static final int j = el3.f("lyr");
    public static final int k = el3.f("gen");
    public static final int l = el3.f("covr");
    public static final int m = el3.f("gnre");
    public static final int n = el3.f("grp");
    public static final int o = el3.f("disk");
    public static final int p = el3.f("trkn");
    public static final int q = el3.f("tmpo");
    public static final int r = el3.f("cpil");
    public static final int s = el3.f("aART");
    public static final int t = el3.f("sonm");
    public static final int u = el3.f("soal");
    public static final int v = el3.f("soar");
    public static final int w = el3.f("soaa");
    public static final int x = el3.f("soco");
    public static final int y = el3.f("rtng");
    public static final int z = el3.f("pgap");
    public static final int A = el3.f("sosn");
    public static final int B = el3.f("tvsh");
    public static final int C = el3.f("----");
    public static final String[] D = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    public static zzmn a(int i2, String str, al3 al3Var) {
        int iB = al3Var.b();
        if (al3Var.b() == ah3.F0) {
            al3Var.i(8);
            return new zzmn(str, al3Var.j(iB - 16));
        }
        String strValueOf = String.valueOf(ah3.a(i2));
        Log.w("MetadataUtil", strValueOf.length() != 0 ? "Failed to parse text attribute: ".concat(strValueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    public static zzmo b(int i2, String str, al3 al3Var, boolean z2, boolean z3) {
        int iD = d(al3Var);
        if (z3) {
            iD = Math.min(1, iD);
        }
        if (iD >= 0) {
            return z2 ? new zzmn(str, Integer.toString(iD)) : new zzmj("und", str, Integer.toString(iD));
        }
        String strValueOf = String.valueOf(ah3.a(i2));
        Log.w("MetadataUtil", strValueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(strValueOf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    public static zzmn c(int i2, String str, al3 al3Var) {
        int iB = al3Var.b();
        if (al3Var.b() == ah3.F0 && iB >= 22) {
            al3Var.i(10);
            int iE = al3Var.e();
            if (iE > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(iE);
                String string = sb.toString();
                int iE2 = al3Var.e();
                if (iE2 > 0) {
                    String strValueOf = String.valueOf(string);
                    StringBuilder sb2 = new StringBuilder(strValueOf.length() + 12);
                    sb2.append(strValueOf);
                    sb2.append("/");
                    sb2.append(iE2);
                    string = sb2.toString();
                }
                return new zzmn(str, string);
            }
        }
        String strValueOf2 = String.valueOf(ah3.a(i2));
        Log.w("MetadataUtil", strValueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(strValueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }

    public static int d(al3 al3Var) {
        al3Var.i(4);
        if (al3Var.b() == ah3.F0) {
            al3Var.i(8);
            return al3Var.d();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }
}
