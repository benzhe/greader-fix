package defpackage;

import defpackage.ze6;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.ConcurrentModificationException;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* loaded from: classes.dex */
public final class uf6 {
    public static final de6<String> A;
    public static final de6<BigDecimal> B;
    public static final de6<BigInteger> C;
    public static final ee6 D;
    public static final de6<StringBuilder> E;
    public static final ee6 F;
    public static final de6<StringBuffer> G;
    public static final ee6 H;
    public static final de6<URL> I;
    public static final ee6 J;
    public static final de6<URI> K;
    public static final ee6 L;
    public static final de6<InetAddress> M;
    public static final ee6 N;
    public static final de6<UUID> O;
    public static final ee6 P;
    public static final de6<Currency> Q;
    public static final ee6 R;
    public static final ee6 S;
    public static final de6<Calendar> T;
    public static final ee6 U;
    public static final de6<Locale> V;
    public static final ee6 W;
    public static final de6<td6> X;
    public static final ee6 Y;
    public static final ee6 Z;
    public static final de6<Class> a;
    public static final ee6 b;
    public static final de6<BitSet> c;
    public static final ee6 d;
    public static final de6<Boolean> e;
    public static final de6<Boolean> f;
    public static final ee6 g;
    public static final de6<Number> h;
    public static final ee6 i;
    public static final de6<Number> j;
    public static final ee6 k;
    public static final de6<Number> l;
    public static final ee6 m;
    public static final de6<AtomicInteger> n;
    public static final ee6 o;
    public static final de6<AtomicBoolean> p;
    public static final ee6 q;
    public static final de6<AtomicIntegerArray> r;
    public static final ee6 s;
    public static final de6<Number> t;
    public static final de6<Number> u;
    public static final de6<Number> v;
    public static final de6<Number> w;
    public static final ee6 x;
    public static final de6<Character> y;
    public static final ee6 z;

    public class a extends de6<AtomicIntegerArray> {
        @Override // defpackage.de6
        public AtomicIntegerArray a(eg6 eg6Var) throws IOException {
            ArrayList arrayList = new ArrayList();
            eg6Var.a();
            while (eg6Var.m()) {
                try {
                    arrayList.add(Integer.valueOf(eg6Var.x()));
                } catch (NumberFormatException e) {
                    throw new be6(e);
                }
            }
            eg6Var.f();
            int size = arrayList.size();
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
            for (int i = 0; i < size; i++) {
                atomicIntegerArray.set(i, ((Integer) arrayList.get(i)).intValue());
            }
            return atomicIntegerArray;
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, AtomicIntegerArray atomicIntegerArray) throws IOException {
            gg6Var.b();
            int length = atomicIntegerArray.length();
            for (int i = 0; i < length; i++) {
                gg6Var.x(r6.get(i));
            }
            gg6Var.f();
        }
    }

    public class a0 extends de6<Number> {
        @Override // defpackage.de6
        public Number a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            try {
                return Short.valueOf((short) eg6Var.x());
            } catch (NumberFormatException e) {
                throw new be6(e);
            }
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Number number) throws IOException {
            gg6Var.C(number);
        }
    }

    public class b extends de6<Number> {
        @Override // defpackage.de6
        public Number a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            try {
                return Long.valueOf(eg6Var.y());
            } catch (NumberFormatException e) {
                throw new be6(e);
            }
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Number number) throws IOException {
            gg6Var.C(number);
        }
    }

    public class b0 extends de6<Number> {
        @Override // defpackage.de6
        public Number a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            try {
                return Integer.valueOf(eg6Var.x());
            } catch (NumberFormatException e) {
                throw new be6(e);
            }
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Number number) throws IOException {
            gg6Var.C(number);
        }
    }

    public class c extends de6<Number> {
        @Override // defpackage.de6
        public Number a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() != fg6.NULL) {
                return Float.valueOf((float) eg6Var.w());
            }
            eg6Var.E();
            return null;
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Number number) throws IOException {
            gg6Var.C(number);
        }
    }

    public class c0 extends de6<AtomicInteger> {
        @Override // defpackage.de6
        public AtomicInteger a(eg6 eg6Var) throws IOException {
            try {
                return new AtomicInteger(eg6Var.x());
            } catch (NumberFormatException e) {
                throw new be6(e);
            }
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, AtomicInteger atomicInteger) throws IOException {
            gg6Var.x(atomicInteger.get());
        }
    }

    public class d extends de6<Number> {
        @Override // defpackage.de6
        public Number a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() != fg6.NULL) {
                return Double.valueOf(eg6Var.w());
            }
            eg6Var.E();
            return null;
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Number number) throws IOException {
            gg6Var.C(number);
        }
    }

    public class d0 extends de6<AtomicBoolean> {
        @Override // defpackage.de6
        public AtomicBoolean a(eg6 eg6Var) throws IOException {
            return new AtomicBoolean(eg6Var.t());
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, AtomicBoolean atomicBoolean) throws IOException {
            gg6Var.E(atomicBoolean.get());
        }
    }

    public class e extends de6<Number> {
        @Override // defpackage.de6
        public Number a(eg6 eg6Var) throws IOException {
            fg6 fg6VarQ = eg6Var.Q();
            int iOrdinal = fg6VarQ.ordinal();
            if (iOrdinal == 5 || iOrdinal == 6) {
                return new ye6(eg6Var.I());
            }
            if (iOrdinal == 8) {
                eg6Var.E();
                return null;
            }
            throw new be6("Expecting number, got: " + fg6VarQ);
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Number number) throws IOException {
            gg6Var.C(number);
        }
    }

    public static final class e0<T extends Enum<T>> extends de6<T> {
        public final Map<String, T> a = new HashMap();
        public final Map<T, String> b = new HashMap();

        public e0(Class<T> cls) {
            try {
                for (T t : cls.getEnumConstants()) {
                    String strName = t.name();
                    ge6 ge6Var = (ge6) cls.getField(strName).getAnnotation(ge6.class);
                    if (ge6Var != null) {
                        strName = ge6Var.value();
                        for (String str : ge6Var.alternate()) {
                            this.a.put(str, t);
                        }
                    }
                    this.a.put(strName, t);
                    this.b.put(t, strName);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError(e);
            }
        }

        @Override // defpackage.de6
        public Object a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() != fg6.NULL) {
                return this.a.get(eg6Var.I());
            }
            eg6Var.E();
            return null;
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Object obj) throws IOException {
            Enum r3 = (Enum) obj;
            gg6Var.D(r3 == null ? null : this.b.get(r3));
        }
    }

    public class f extends de6<Character> {
        @Override // defpackage.de6
        public Character a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            String strI = eg6Var.I();
            if (strI.length() == 1) {
                return Character.valueOf(strI.charAt(0));
            }
            throw new be6(jo.n("Expecting character, got: ", strI));
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Character ch) throws IOException {
            Character ch2 = ch;
            gg6Var.D(ch2 == null ? null : String.valueOf(ch2));
        }
    }

    public class g extends de6<String> {
        @Override // defpackage.de6
        public String a(eg6 eg6Var) throws IOException {
            fg6 fg6VarQ = eg6Var.Q();
            if (fg6VarQ != fg6.NULL) {
                return fg6VarQ == fg6.BOOLEAN ? Boolean.toString(eg6Var.t()) : eg6Var.I();
            }
            eg6Var.E();
            return null;
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, String str) throws IOException {
            gg6Var.D(str);
        }
    }

    public class h extends de6<BigDecimal> {
        @Override // defpackage.de6
        public BigDecimal a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            try {
                return new BigDecimal(eg6Var.I());
            } catch (NumberFormatException e) {
                throw new be6(e);
            }
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, BigDecimal bigDecimal) throws IOException {
            gg6Var.C(bigDecimal);
        }
    }

    public class i extends de6<BigInteger> {
        @Override // defpackage.de6
        public BigInteger a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            try {
                return new BigInteger(eg6Var.I());
            } catch (NumberFormatException e) {
                throw new be6(e);
            }
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, BigInteger bigInteger) throws IOException {
            gg6Var.C(bigInteger);
        }
    }

    public class j extends de6<StringBuilder> {
        @Override // defpackage.de6
        public StringBuilder a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() != fg6.NULL) {
                return new StringBuilder(eg6Var.I());
            }
            eg6Var.E();
            return null;
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, StringBuilder sb) throws IOException {
            StringBuilder sb2 = sb;
            gg6Var.D(sb2 == null ? null : sb2.toString());
        }
    }

    public class k extends de6<Class> {
        @Override // defpackage.de6
        public Class a(eg6 eg6Var) throws IOException {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Class cls) throws IOException {
            StringBuilder sbZ = jo.z("Attempted to serialize java.lang.Class: ");
            sbZ.append(cls.getName());
            sbZ.append(". Forgot to register a type adapter?");
            throw new UnsupportedOperationException(sbZ.toString());
        }
    }

    public class l extends de6<StringBuffer> {
        @Override // defpackage.de6
        public StringBuffer a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() != fg6.NULL) {
                return new StringBuffer(eg6Var.I());
            }
            eg6Var.E();
            return null;
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, StringBuffer stringBuffer) throws IOException {
            StringBuffer stringBuffer2 = stringBuffer;
            gg6Var.D(stringBuffer2 == null ? null : stringBuffer2.toString());
        }
    }

    public class m extends de6<URL> {
        @Override // defpackage.de6
        public URL a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            String strI = eg6Var.I();
            if ("null".equals(strI)) {
                return null;
            }
            return new URL(strI);
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, URL url) throws IOException {
            URL url2 = url;
            gg6Var.D(url2 == null ? null : url2.toExternalForm());
        }
    }

    public class n extends de6<URI> {
        @Override // defpackage.de6
        public URI a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            try {
                String strI = eg6Var.I();
                if ("null".equals(strI)) {
                    return null;
                }
                return new URI(strI);
            } catch (URISyntaxException e) {
                throw new ud6(e);
            }
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, URI uri) throws IOException {
            URI uri2 = uri;
            gg6Var.D(uri2 == null ? null : uri2.toASCIIString());
        }
    }

    public class o extends de6<InetAddress> {
        @Override // defpackage.de6
        public InetAddress a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() != fg6.NULL) {
                return InetAddress.getByName(eg6Var.I());
            }
            eg6Var.E();
            return null;
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, InetAddress inetAddress) throws IOException {
            InetAddress inetAddress2 = inetAddress;
            gg6Var.D(inetAddress2 == null ? null : inetAddress2.getHostAddress());
        }
    }

    public class p extends de6<UUID> {
        @Override // defpackage.de6
        public UUID a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() != fg6.NULL) {
                return UUID.fromString(eg6Var.I());
            }
            eg6Var.E();
            return null;
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, UUID uuid) throws IOException {
            UUID uuid2 = uuid;
            gg6Var.D(uuid2 == null ? null : uuid2.toString());
        }
    }

    public class q extends de6<Currency> {
        @Override // defpackage.de6
        public Currency a(eg6 eg6Var) throws IOException {
            return Currency.getInstance(eg6Var.I());
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Currency currency) throws IOException {
            gg6Var.D(currency.getCurrencyCode());
        }
    }

    public class r implements ee6 {

        public class a extends de6<Timestamp> {
            public final /* synthetic */ de6 a;

            public a(r rVar, de6 de6Var) {
                this.a = de6Var;
            }

            @Override // defpackage.de6
            public Timestamp a(eg6 eg6Var) throws IOException {
                Date date = (Date) this.a.a(eg6Var);
                if (date != null) {
                    return new Timestamp(date.getTime());
                }
                return null;
            }

            @Override // defpackage.de6
            public void b(gg6 gg6Var, Timestamp timestamp) throws IOException {
                this.a.b(gg6Var, timestamp);
            }
        }

        @Override // defpackage.ee6
        public <T> de6<T> b(od6 od6Var, dg6<T> dg6Var) {
            if (dg6Var.a != Timestamp.class) {
                return null;
            }
            Objects.requireNonNull(od6Var);
            return new a(this, od6Var.d(new dg6<>(Date.class)));
        }
    }

    public class s extends de6<Calendar> {
        @Override // defpackage.de6
        public Calendar a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            eg6Var.b();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (eg6Var.Q() != fg6.END_OBJECT) {
                String strC = eg6Var.C();
                int iX = eg6Var.x();
                if ("year".equals(strC)) {
                    i = iX;
                } else if ("month".equals(strC)) {
                    i2 = iX;
                } else if ("dayOfMonth".equals(strC)) {
                    i3 = iX;
                } else if ("hourOfDay".equals(strC)) {
                    i4 = iX;
                } else if ("minute".equals(strC)) {
                    i5 = iX;
                } else if ("second".equals(strC)) {
                    i6 = iX;
                }
            }
            eg6Var.g();
            return new GregorianCalendar(i, i2, i3, i4, i5, i6);
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Calendar calendar) throws IOException {
            if (calendar == null) {
                gg6Var.m();
                return;
            }
            gg6Var.c();
            gg6Var.i("year");
            gg6Var.x(r4.get(1));
            gg6Var.i("month");
            gg6Var.x(r4.get(2));
            gg6Var.i("dayOfMonth");
            gg6Var.x(r4.get(5));
            gg6Var.i("hourOfDay");
            gg6Var.x(r4.get(11));
            gg6Var.i("minute");
            gg6Var.x(r4.get(12));
            gg6Var.i("second");
            gg6Var.x(r4.get(13));
            gg6Var.g();
        }
    }

    public class t extends de6<Locale> {
        @Override // defpackage.de6
        public Locale a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(eg6Var.I(), "_");
            String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            return (strNextToken2 == null && strNextToken3 == null) ? new Locale(strNextToken) : strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Locale locale) throws IOException {
            Locale locale2 = locale;
            gg6Var.D(locale2 == null ? null : locale2.toString());
        }
    }

    public class u extends de6<td6> {
        @Override // defpackage.de6
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public td6 a(eg6 eg6Var) throws IOException {
            int iOrdinal = eg6Var.Q().ordinal();
            if (iOrdinal == 0) {
                qd6 qd6Var = new qd6();
                eg6Var.a();
                while (eg6Var.m()) {
                    qd6Var.e.add(a(eg6Var));
                }
                eg6Var.f();
                return qd6Var;
            }
            if (iOrdinal == 2) {
                wd6 wd6Var = new wd6();
                eg6Var.b();
                while (eg6Var.m()) {
                    wd6Var.a.put(eg6Var.C(), a(eg6Var));
                }
                eg6Var.g();
                return wd6Var;
            }
            if (iOrdinal == 5) {
                return new yd6(eg6Var.I());
            }
            if (iOrdinal == 6) {
                return new yd6(new ye6(eg6Var.I()));
            }
            if (iOrdinal == 7) {
                return new yd6(Boolean.valueOf(eg6Var.t()));
            }
            if (iOrdinal != 8) {
                throw new IllegalArgumentException();
            }
            eg6Var.E();
            return vd6.a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.de6
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(gg6 gg6Var, td6 td6Var) throws IOException {
            if (td6Var == null || (td6Var instanceof vd6)) {
                gg6Var.m();
                return;
            }
            if (td6Var instanceof yd6) {
                yd6 yd6VarD = td6Var.d();
                Object obj = yd6VarD.a;
                if (obj instanceof Number) {
                    gg6Var.C(yd6VarD.j());
                    return;
                } else if (obj instanceof Boolean) {
                    gg6Var.E(yd6VarD.h());
                    return;
                } else {
                    gg6Var.D(yd6VarD.l());
                    return;
                }
            }
            boolean z = td6Var instanceof qd6;
            if (z) {
                gg6Var.b();
                if (!z) {
                    throw new IllegalStateException("Not a JSON Array: " + td6Var);
                }
                Iterator<td6> it = ((qd6) td6Var).iterator();
                while (it.hasNext()) {
                    b(gg6Var, it.next());
                }
                gg6Var.f();
                return;
            }
            boolean z2 = td6Var instanceof wd6;
            if (!z2) {
                StringBuilder sbZ = jo.z("Couldn't write ");
                sbZ.append(td6Var.getClass());
                throw new IllegalArgumentException(sbZ.toString());
            }
            gg6Var.c();
            if (!z2) {
                throw new IllegalStateException("Not a JSON Object: " + td6Var);
            }
            ze6 ze6Var = ze6.this;
            ze6.e eVar = ze6Var.i.h;
            int i = ze6Var.h;
            while (true) {
                ze6.e eVar2 = ze6Var.i;
                if (!(eVar != eVar2)) {
                    gg6Var.g();
                    return;
                }
                if (eVar == eVar2) {
                    throw new NoSuchElementException();
                }
                if (ze6Var.h != i) {
                    throw new ConcurrentModificationException();
                }
                ze6.e eVar3 = eVar.h;
                gg6Var.i((String) eVar.j);
                b(gg6Var, (td6) eVar.k);
                eVar = eVar3;
            }
        }
    }

    public class v extends de6<BitSet> {
        /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x004d  */
        @Override // defpackage.de6
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.BitSet a(defpackage.eg6 r6) throws java.io.IOException {
            /*
                r5 = this;
                java.util.BitSet r0 = new java.util.BitSet
                r0.<init>()
                r6.a()
                fg6 r1 = r6.Q()
                r2 = 0
            Ld:
                fg6 r3 = defpackage.fg6.END_ARRAY
                if (r1 == r3) goto L66
                int r3 = r1.ordinal()
                r4 = 5
                if (r3 == r4) goto L41
                r4 = 6
                if (r3 == r4) goto L3a
                r4 = 7
                if (r3 != r4) goto L23
                boolean r1 = r6.t()
                goto L4e
            L23:
                be6 r6 = new be6
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r2 = "Invalid bitset value type: "
                r0.append(r2)
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r6.<init>(r0)
                throw r6
            L3a:
                int r1 = r6.x()
                if (r1 == 0) goto L4d
                goto L4b
            L41:
                java.lang.String r1 = r6.I()
                int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.NumberFormatException -> L5a
                if (r1 == 0) goto L4d
            L4b:
                r1 = 1
                goto L4e
            L4d:
                r1 = 0
            L4e:
                if (r1 == 0) goto L53
                r0.set(r2)
            L53:
                int r2 = r2 + 1
                fg6 r1 = r6.Q()
                goto Ld
            L5a:
                be6 r6 = new be6
                java.lang.String r0 = "Error: Expecting: bitset number value (1, 0), Found: "
                java.lang.String r0 = defpackage.jo.n(r0, r1)
                r6.<init>(r0)
                throw r6
            L66:
                r6.f()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: uf6.v.a(eg6):java.lang.Object");
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, BitSet bitSet) throws IOException {
            BitSet bitSet2 = bitSet;
            gg6Var.b();
            int length = bitSet2.length();
            for (int i = 0; i < length; i++) {
                gg6Var.x(bitSet2.get(i) ? 1L : 0L);
            }
            gg6Var.f();
        }
    }

    public class w implements ee6 {
        @Override // defpackage.ee6
        public <T> de6<T> b(od6 od6Var, dg6<T> dg6Var) {
            Class<? super T> superclass = dg6Var.a;
            if (!Enum.class.isAssignableFrom(superclass) || superclass == Enum.class) {
                return null;
            }
            if (!superclass.isEnum()) {
                superclass = superclass.getSuperclass();
            }
            return new e0(superclass);
        }
    }

    public class x extends de6<Boolean> {
        @Override // defpackage.de6
        public Boolean a(eg6 eg6Var) throws IOException {
            fg6 fg6VarQ = eg6Var.Q();
            if (fg6VarQ != fg6.NULL) {
                return fg6VarQ == fg6.STRING ? Boolean.valueOf(Boolean.parseBoolean(eg6Var.I())) : Boolean.valueOf(eg6Var.t());
            }
            eg6Var.E();
            return null;
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Boolean bool) throws IOException {
            gg6Var.y(bool);
        }
    }

    public class y extends de6<Boolean> {
        @Override // defpackage.de6
        public Boolean a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() != fg6.NULL) {
                return Boolean.valueOf(eg6Var.I());
            }
            eg6Var.E();
            return null;
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Boolean bool) throws IOException {
            Boolean bool2 = bool;
            gg6Var.D(bool2 == null ? "null" : bool2.toString());
        }
    }

    public class z extends de6<Number> {
        @Override // defpackage.de6
        public Number a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            try {
                return Byte.valueOf((byte) eg6Var.x());
            } catch (NumberFormatException e) {
                throw new be6(e);
            }
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Number number) throws IOException {
            gg6Var.C(number);
        }
    }

    static {
        ce6 ce6Var = new ce6(new k());
        a = ce6Var;
        b = new vf6(Class.class, ce6Var);
        ce6 ce6Var2 = new ce6(new v());
        c = ce6Var2;
        d = new vf6(BitSet.class, ce6Var2);
        x xVar = new x();
        e = xVar;
        f = new y();
        g = new wf6(Boolean.TYPE, Boolean.class, xVar);
        z zVar = new z();
        h = zVar;
        i = new wf6(Byte.TYPE, Byte.class, zVar);
        a0 a0Var = new a0();
        j = a0Var;
        k = new wf6(Short.TYPE, Short.class, a0Var);
        b0 b0Var = new b0();
        l = b0Var;
        m = new wf6(Integer.TYPE, Integer.class, b0Var);
        ce6 ce6Var3 = new ce6(new c0());
        n = ce6Var3;
        o = new vf6(AtomicInteger.class, ce6Var3);
        ce6 ce6Var4 = new ce6(new d0());
        p = ce6Var4;
        q = new vf6(AtomicBoolean.class, ce6Var4);
        ce6 ce6Var5 = new ce6(new a());
        r = ce6Var5;
        s = new vf6(AtomicIntegerArray.class, ce6Var5);
        t = new b();
        u = new c();
        v = new d();
        e eVar = new e();
        w = eVar;
        x = new vf6(Number.class, eVar);
        f fVar = new f();
        y = fVar;
        z = new wf6(Character.TYPE, Character.class, fVar);
        g gVar = new g();
        A = gVar;
        B = new h();
        C = new i();
        D = new vf6(String.class, gVar);
        j jVar = new j();
        E = jVar;
        F = new vf6(StringBuilder.class, jVar);
        l lVar = new l();
        G = lVar;
        H = new vf6(StringBuffer.class, lVar);
        m mVar = new m();
        I = mVar;
        J = new vf6(URL.class, mVar);
        n nVar = new n();
        K = nVar;
        L = new vf6(URI.class, nVar);
        o oVar = new o();
        M = oVar;
        N = new yf6(InetAddress.class, oVar);
        p pVar = new p();
        O = pVar;
        P = new vf6(UUID.class, pVar);
        ce6 ce6Var6 = new ce6(new q());
        Q = ce6Var6;
        R = new vf6(Currency.class, ce6Var6);
        S = new r();
        s sVar = new s();
        T = sVar;
        U = new xf6(Calendar.class, GregorianCalendar.class, sVar);
        t tVar = new t();
        V = tVar;
        W = new vf6(Locale.class, tVar);
        u uVar = new u();
        X = uVar;
        Y = new yf6(td6.class, uVar);
        Z = new w();
    }
}
