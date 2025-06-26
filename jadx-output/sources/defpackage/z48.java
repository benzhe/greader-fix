package defpackage;

import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;
import org.apache.commons.lang3.time.TimeZones;

/* loaded from: classes2.dex */
public abstract class z48 implements Serializable {
    public static final Map<String, String> e;

    static {
        HashMap mapE = jo.E("ACT", "Australia/Darwin", "AET", "Australia/Sydney");
        mapE.put("AGT", "America/Argentina/Buenos_Aires");
        mapE.put("ART", "Africa/Cairo");
        mapE.put("AST", "America/Anchorage");
        mapE.put("BET", "America/Sao_Paulo");
        mapE.put("BST", "Asia/Dhaka");
        mapE.put("CAT", "Africa/Harare");
        mapE.put("CNT", "America/St_Johns");
        mapE.put("CST", "America/Chicago");
        mapE.put("CTT", "Asia/Shanghai");
        mapE.put("EAT", "Africa/Addis_Ababa");
        mapE.put("ECT", "Europe/Paris");
        mapE.put("IET", "America/Indiana/Indianapolis");
        mapE.put("IST", "Asia/Kolkata");
        mapE.put("JST", "Asia/Tokyo");
        mapE.put("MIT", "Pacific/Apia");
        mapE.put("NET", "Asia/Yerevan");
        mapE.put("NST", "Pacific/Auckland");
        mapE.put("PLT", "Asia/Karachi");
        mapE.put("PNT", "America/Phoenix");
        mapE.put("PRT", "America/Puerto_Rico");
        mapE.put("PST", "America/Los_Angeles");
        mapE.put("SST", "Pacific/Guadalcanal");
        mapE.put("VST", "Asia/Ho_Chi_Minh");
        mapE.put("EST", "-05:00");
        mapE.put("MST", "-07:00");
        mapE.put("HST", "-10:00");
        e = Collections.unmodifiableMap(mapE);
    }

    public z48() {
        if (getClass() != a58.class && getClass() != b58.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public static z48 M() {
        b58 b58Var;
        b58 b58Var2;
        String id = TimeZone.getDefault().getID();
        Map<String, String> map = e;
        kt7.o(id, "zoneId");
        kt7.o(map, "aliasMap");
        String str = map.get(id);
        if (str != null) {
            id = str;
        }
        kt7.o(id, "zoneId");
        if (id.equals("Z")) {
            return a58.j;
        }
        if (id.length() == 1) {
            throw new l48(jo.n("Invalid zone: ", id));
        }
        if (id.startsWith("+") || id.startsWith("-")) {
            return a58.O(id);
        }
        if (id.equals("UTC") || id.equals(TimeZones.GMT_ID) || id.equals("UT")) {
            return new b58(id, a58.j.L());
        }
        if (id.startsWith("UTC+") || id.startsWith("GMT+") || id.startsWith("UTC-") || id.startsWith("GMT-")) {
            a58 a58VarO = a58.O(id.substring(3));
            if (a58VarO.f == 0) {
                b58Var = new b58(id.substring(0, 3), a58VarO.L());
            } else {
                b58Var = new b58(id.substring(0, 3) + a58VarO.g, a58VarO.L());
            }
            return b58Var;
        }
        if (!id.startsWith("UT+") && !id.startsWith("UT-")) {
            return b58.O(id, true);
        }
        a58 a58VarO2 = a58.O(id.substring(2));
        if (a58VarO2.f == 0) {
            b58Var2 = new b58("UT", a58VarO2.L());
        } else {
            StringBuilder sbZ = jo.z("UT");
            sbZ.append(a58VarO2.g);
            b58Var2 = new b58(sbZ.toString(), a58VarO2.L());
        }
        return b58Var2;
    }

    public abstract String K();

    public abstract k78 L();

    public abstract void N(DataOutput dataOutput) throws IOException;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof z48) {
            return K().equals(((z48) obj).K());
        }
        return false;
    }

    public int hashCode() {
        return K().hashCode();
    }

    public String toString() {
        return K();
    }
}
