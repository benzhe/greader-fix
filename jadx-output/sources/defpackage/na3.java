package defpackage;

import defpackage.ja3;

/* loaded from: classes.dex */
public final class na3 implements y63 {
    public static final y63 a = new na3();

    @Override // defpackage.y63
    public final boolean k(int i) {
        ja3.g gVar;
        switch (i) {
            case 0:
                gVar = ja3.g.UNKNOWN;
                break;
            case 1:
                gVar = ja3.g.URL_PHISHING;
                break;
            case 2:
                gVar = ja3.g.URL_MALWARE;
                break;
            case 3:
                gVar = ja3.g.URL_UNWANTED;
                break;
            case 4:
                gVar = ja3.g.CLIENT_SIDE_PHISHING_URL;
                break;
            case 5:
                gVar = ja3.g.CLIENT_SIDE_MALWARE_URL;
                break;
            case 6:
                gVar = ja3.g.DANGEROUS_DOWNLOAD_RECOVERY;
                break;
            case 7:
                gVar = ja3.g.DANGEROUS_DOWNLOAD_WARNING;
                break;
            case 8:
                gVar = ja3.g.OCTAGON_AD;
                break;
            case 9:
                gVar = ja3.g.OCTAGON_AD_SB_MATCH;
                break;
            default:
                gVar = null;
                break;
        }
        return gVar != null;
    }
}
