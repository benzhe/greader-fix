package defpackage;

import android.database.Cursor;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public class rg {
    public final String a;
    public final Map<String, a> b;
    public final Set<b> c;
    public final Set<d> d;

    public static class a {
        public final String a;
        public final String b;
        public final int c;
        public final boolean d;
        public final int e;

        public a(String str, String str2, boolean z, int i) {
            this.a = str;
            this.b = str2;
            this.d = z;
            this.e = i;
            int i2 = 5;
            if (str2 != null) {
                String upperCase = str2.toUpperCase(Locale.US);
                if (upperCase.contains("INT")) {
                    i2 = 3;
                } else if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                    i2 = 2;
                } else if (!upperCase.contains("BLOB")) {
                    i2 = (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
                }
            }
            this.c = i2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.e == aVar.e && this.a.equals(aVar.a) && this.d == aVar.d && this.c == aVar.c;
        }

        public int hashCode() {
            return (((((this.a.hashCode() * 31) + this.c) * 31) + (this.d ? 1231 : 1237)) * 31) + this.e;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("Column{name='");
            sbZ.append(this.a);
            sbZ.append('\'');
            sbZ.append(", type='");
            sbZ.append(this.b);
            sbZ.append('\'');
            sbZ.append(", affinity='");
            sbZ.append(this.c);
            sbZ.append('\'');
            sbZ.append(", notNull=");
            sbZ.append(this.d);
            sbZ.append(", primaryKeyPosition=");
            sbZ.append(this.e);
            sbZ.append('}');
            return sbZ.toString();
        }
    }

    public static class b {
        public final String a;
        public final String b;
        public final String c;
        public final List<String> d;
        public final List<String> e;

        public b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = Collections.unmodifiableList(list);
            this.e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.a.equals(bVar.a) && this.b.equals(bVar.b) && this.c.equals(bVar.c) && this.d.equals(bVar.d)) {
                return this.e.equals(bVar.e);
            }
            return false;
        }

        public int hashCode() {
            return this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31);
        }

        public String toString() {
            StringBuilder sbZ = jo.z("ForeignKey{referenceTable='");
            sbZ.append(this.a);
            sbZ.append('\'');
            sbZ.append(", onDelete='");
            sbZ.append(this.b);
            sbZ.append('\'');
            sbZ.append(", onUpdate='");
            sbZ.append(this.c);
            sbZ.append('\'');
            sbZ.append(", columnNames=");
            sbZ.append(this.d);
            sbZ.append(", referenceColumnNames=");
            sbZ.append(this.e);
            sbZ.append('}');
            return sbZ.toString();
        }
    }

    public static class c implements Comparable<c> {
        public final int e;
        public final int f;
        public final String g;
        public final String h;

        public c(int i, int i2, String str, String str2) {
            this.e = i;
            this.f = i2;
            this.g = str;
            this.h = str2;
        }

        @Override // java.lang.Comparable
        public int compareTo(c cVar) {
            c cVar2 = cVar;
            int i = this.e - cVar2.e;
            return i == 0 ? this.f - cVar2.f : i;
        }
    }

    public static class d {
        public final String a;
        public final boolean b;
        public final List<String> c;

        public d(String str, boolean z, List<String> list) {
            this.a = str;
            this.b = z;
            this.c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (this.b == dVar.b && this.c.equals(dVar.c)) {
                return this.a.startsWith("index_") ? dVar.a.startsWith("index_") : this.a.equals(dVar.a);
            }
            return false;
        }

        public int hashCode() {
            return this.c.hashCode() + ((((this.a.startsWith("index_") ? -1184239155 : this.a.hashCode()) * 31) + (this.b ? 1 : 0)) * 31);
        }

        public String toString() {
            StringBuilder sbZ = jo.z("Index{name='");
            sbZ.append(this.a);
            sbZ.append('\'');
            sbZ.append(", unique=");
            sbZ.append(this.b);
            sbZ.append(", columns=");
            sbZ.append(this.c);
            sbZ.append('}');
            return sbZ.toString();
        }
    }

    public rg(String str, Map<String, a> map, Set<b> set, Set<d> set2) {
        this.a = str;
        this.b = Collections.unmodifiableMap(map);
        this.c = Collections.unmodifiableSet(set);
        this.d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    public static rg a(wg wgVar, String str) {
        int i;
        int i2;
        List<c> list;
        int i3;
        ah ahVar = (ah) wgVar;
        Cursor cursorC = ahVar.c(jo.o("PRAGMA table_info(`", str, "`)"));
        HashMap map = new HashMap();
        try {
            if (cursorC.getColumnCount() > 0) {
                int columnIndex = cursorC.getColumnIndex(InetAddressKeys.KEY_NAME);
                int columnIndex2 = cursorC.getColumnIndex(NSRSS20.ENC_TYPE);
                int columnIndex3 = cursorC.getColumnIndex("notnull");
                int columnIndex4 = cursorC.getColumnIndex("pk");
                while (cursorC.moveToNext()) {
                    String string = cursorC.getString(columnIndex);
                    map.put(string, new a(string, cursorC.getString(columnIndex2), cursorC.getInt(columnIndex3) != 0, cursorC.getInt(columnIndex4)));
                }
            }
            cursorC.close();
            HashSet hashSet = new HashSet();
            cursorC = ahVar.c("PRAGMA foreign_key_list(`" + str + "`)");
            try {
                int columnIndex5 = cursorC.getColumnIndex("id");
                int columnIndex6 = cursorC.getColumnIndex("seq");
                int columnIndex7 = cursorC.getColumnIndex("table");
                int columnIndex8 = cursorC.getColumnIndex("on_delete");
                int columnIndex9 = cursorC.getColumnIndex("on_update");
                List<c> listB = b(cursorC);
                int count = cursorC.getCount();
                int i4 = 0;
                while (i4 < count) {
                    cursorC.moveToPosition(i4);
                    if (cursorC.getInt(columnIndex6) != 0) {
                        i = columnIndex5;
                        i2 = columnIndex6;
                        list = listB;
                        i3 = count;
                    } else {
                        int i5 = cursorC.getInt(columnIndex5);
                        i = columnIndex5;
                        ArrayList arrayList = new ArrayList();
                        i2 = columnIndex6;
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it = ((ArrayList) listB).iterator();
                        while (it.hasNext()) {
                            List<c> list2 = listB;
                            c cVar = (c) it.next();
                            int i6 = count;
                            if (cVar.e == i5) {
                                arrayList.add(cVar.g);
                                arrayList2.add(cVar.h);
                            }
                            listB = list2;
                            count = i6;
                        }
                        list = listB;
                        i3 = count;
                        hashSet.add(new b(cursorC.getString(columnIndex7), cursorC.getString(columnIndex8), cursorC.getString(columnIndex9), arrayList, arrayList2));
                    }
                    i4++;
                    columnIndex5 = i;
                    columnIndex6 = i2;
                    listB = list;
                    count = i3;
                }
                cursorC.close();
                cursorC = ahVar.c("PRAGMA index_list(`" + str + "`)");
                try {
                    int columnIndex10 = cursorC.getColumnIndex(InetAddressKeys.KEY_NAME);
                    int columnIndex11 = cursorC.getColumnIndex("origin");
                    int columnIndex12 = cursorC.getColumnIndex("unique");
                    HashSet hashSet2 = null;
                    if (columnIndex10 == -1 || columnIndex11 == -1 || columnIndex12 == -1) {
                        break;
                    }
                    HashSet hashSet3 = new HashSet();
                    while (cursorC.moveToNext()) {
                        if ("c".equals(cursorC.getString(columnIndex11))) {
                            d dVarC = c(ahVar, cursorC.getString(columnIndex10), cursorC.getInt(columnIndex12) == 1);
                            if (dVarC == null) {
                                break;
                            }
                            hashSet3.add(dVarC);
                        }
                    }
                    cursorC.close();
                    hashSet2 = hashSet3;
                    return new rg(str, map, hashSet, hashSet2);
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    public static List<c> b(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static d c(wg wgVar, String str, boolean z) {
        Cursor cursorC = ((ah) wgVar).c(jo.o("PRAGMA index_xinfo(`", str, "`)"));
        try {
            int columnIndex = cursorC.getColumnIndex("seqno");
            int columnIndex2 = cursorC.getColumnIndex("cid");
            int columnIndex3 = cursorC.getColumnIndex(InetAddressKeys.KEY_NAME);
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                TreeMap treeMap = new TreeMap();
                while (cursorC.moveToNext()) {
                    if (cursorC.getInt(columnIndex2) >= 0) {
                        int i = cursorC.getInt(columnIndex);
                        treeMap.put(Integer.valueOf(i), cursorC.getString(columnIndex3));
                    }
                }
                ArrayList arrayList = new ArrayList(treeMap.size());
                arrayList.addAll(treeMap.values());
                return new d(str, z, arrayList);
            }
            return null;
        } finally {
            cursorC.close();
        }
    }

    public boolean equals(Object obj) {
        Set<d> set;
        if (this == obj) {
            return true;
        }
        if (obj == null || rg.class != obj.getClass()) {
            return false;
        }
        rg rgVar = (rg) obj;
        String str = this.a;
        if (str == null ? rgVar.a != null : !str.equals(rgVar.a)) {
            return false;
        }
        Map<String, a> map = this.b;
        if (map == null ? rgVar.b != null : !map.equals(rgVar.b)) {
            return false;
        }
        Set<b> set2 = this.c;
        if (set2 == null ? rgVar.c != null : !set2.equals(rgVar.c)) {
            return false;
        }
        Set<d> set3 = this.d;
        if (set3 == null || (set = rgVar.d) == null) {
            return true;
        }
        return set3.equals(set);
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        Map<String, a> map = this.b;
        int iHashCode2 = (iHashCode + (map != null ? map.hashCode() : 0)) * 31;
        Set<b> set = this.c;
        return iHashCode2 + (set != null ? set.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("TableInfo{name='");
        sbZ.append(this.a);
        sbZ.append('\'');
        sbZ.append(", columns=");
        sbZ.append(this.b);
        sbZ.append(", foreignKeys=");
        sbZ.append(this.c);
        sbZ.append(", indices=");
        sbZ.append(this.d);
        sbZ.append('}');
        return sbZ.toString();
    }
}
