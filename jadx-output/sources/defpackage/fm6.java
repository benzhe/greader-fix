package defpackage;

/* loaded from: classes.dex */
public enum fm6 {
    AT,
    BE,
    BG,
    HR,
    CY,
    CZ,
    DK,
    EE,
    FI,
    FR,
    DE,
    GR,
    HU,
    IE,
    IT,
    LV,
    LT,
    LU,
    MT,
    NL,
    PL,
    PT,
    RO,
    SK,
    SI,
    ES,
    SE,
    GB,
    GF,
    PF,
    TF,
    EL,
    UK,
    IS,
    LI,
    NO,
    CH,
    AL,
    BA,
    MK,
    XK,
    ME,
    RS,
    TR;

    public static boolean i(String str) {
        fm6[] fm6VarArrValues = values();
        for (int i = 0; i < 44; i++) {
            if (fm6VarArrValues[i].name().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
