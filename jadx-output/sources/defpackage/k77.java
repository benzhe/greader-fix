package defpackage;

import defpackage.j67;
import defpackage.v27;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* loaded from: classes2.dex */
public final class k77 implements j67.f {
    public static final Throwable a;

    @IgnoreJRERequirement
    public static final class a implements c {
        /* JADX INFO: Thrown type has an unknown type hierarchy: javax.naming.NamingException */
        public static void a(NamingEnumeration<?> namingEnumeration, NamingException namingException) throws NamingException {
            try {
                namingEnumeration.close();
                throw namingException;
            } catch (NamingException unused) {
                throw namingException;
            }
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: javax.naming.NamingException */
        public static void b(DirContext dirContext, NamingException namingException) throws NamingException {
            try {
                dirContext.close();
                throw namingException;
            } catch (NamingException unused) {
                throw namingException;
            }
        }

        public List<String> c(String str, String str2) throws NamingException {
            Throwable th = k77.a;
            if (th != null) {
                throw new UnsupportedOperationException("JNDI is not currently available", th);
            }
            String[] strArr = {str};
            ArrayList arrayList = new ArrayList();
            Hashtable hashtable = new Hashtable();
            hashtable.put("com.sun.jndi.ldap.connect.timeout", "5000");
            hashtable.put("com.sun.jndi.ldap.read.timeout", "5000");
            InitialDirContext initialDirContext = new InitialDirContext(hashtable);
            try {
                NamingEnumeration all = initialDirContext.getAttributes(str2, strArr).getAll();
                while (all.hasMore()) {
                    try {
                        NamingEnumeration all2 = ((Attribute) all.next()).getAll();
                        while (all2.hasMore()) {
                            try {
                                arrayList.add(String.valueOf(all2.next()));
                            } catch (NamingException e) {
                                a(all2, e);
                                throw null;
                            }
                        }
                        all2.close();
                    } catch (NamingException e2) {
                        a(all, e2);
                        throw null;
                    }
                }
                all.close();
                initialDirContext.close();
                return arrayList;
            } catch (NamingException e3) {
                b(initialDirContext, e3);
                throw null;
            }
        }
    }

    public static final class b implements j67.e {
        public static final Logger b = Logger.getLogger(b.class.getName());
        public static final Pattern c = Pattern.compile("\\s+");
        public final c a;

        public static final class a {
            public final String a;
            public final int b;

            public a(String str, int i) {
                this.a = str;
                this.b = i;
            }
        }

        public b(c cVar) {
            this.a = cVar;
        }

        public static a c(String str) {
            String[] strArrSplit = c.split(str);
            sd5.a(strArrSplit.length == 4, "Bad SRV Record: %s", str);
            return new a(strArrSplit[3], Integer.parseInt(strArrSplit[2]));
        }

        @Override // j67.e
        public List<String> a(String str) throws NamingException {
            Logger logger = b;
            Level level = Level.FINER;
            if (logger.isLoggable(level)) {
                logger.log(level, "About to query TXT records for {0}", new Object[]{str});
            }
            List<String> listC = ((a) this.a).c("TXT", jo.n("dns:///", str));
            if (logger.isLoggable(level)) {
                logger.log(level, "Found {0} TXT records", new Object[]{Integer.valueOf(((ArrayList) listC).size())});
            }
            ArrayList arrayList = (ArrayList) listC;
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                StringBuilder sb = new StringBuilder(str2.length());
                int i = 0;
                boolean z = false;
                while (i < str2.length()) {
                    char cCharAt = str2.charAt(i);
                    if (z) {
                        if (cCharAt == '\"') {
                            z = false;
                        } else {
                            if (cCharAt == '\\') {
                                i++;
                                cCharAt = str2.charAt(i);
                            }
                            sb.append(cCharAt);
                        }
                    } else if (cCharAt != ' ') {
                        if (cCharAt == '\"') {
                            z = true;
                        } else {
                            sb.append(cCharAt);
                        }
                    }
                    i++;
                }
                arrayList2.add(sb.toString());
            }
            return Collections.unmodifiableList(arrayList2);
        }

        @Override // j67.e
        public List<q37> b(j67.a aVar, String str) throws Exception {
            Level level;
            a aVarC;
            Logger logger = b;
            Level level2 = Level.FINER;
            if (logger.isLoggable(level2)) {
                logger.log(level2, "About to query SRV records for {0}", new Object[]{str});
            }
            List<String> listC = ((a) this.a).c("SRV", jo.n("dns:///", str));
            if (logger.isLoggable(level2)) {
                logger.log(level2, "Found {0} SRV records", new Object[]{Integer.valueOf(((ArrayList) listC).size())});
            }
            ArrayList arrayList = (ArrayList) listC;
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            Throwable th = null;
            Level level3 = Level.WARNING;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                try {
                    aVarC = c(str2);
                } catch (RuntimeException e) {
                    e = e;
                    b.log(level3, "Failed to construct SRV record " + str2, e);
                    if (th == null) {
                        level = Level.FINE;
                        level3 = level;
                        th = e;
                    }
                } catch (UnknownHostException e2) {
                    e = e2;
                    b.log(level3, "Can't find address for SRV record " + str2, e);
                    if (th == null) {
                        level = Level.FINE;
                        level3 = level;
                        th = e;
                    }
                }
                if (!aVarC.a.endsWith(".")) {
                    throw new RuntimeException("Returned SRV host does not end in period: " + aVarC.a);
                }
                String str3 = aVarC.a;
                String strSubstring = str3.substring(0, str3.length() - 1);
                String str4 = aVarC.a;
                Objects.requireNonNull((j67.b) aVar);
                List listUnmodifiableList = Collections.unmodifiableList(Arrays.asList(InetAddress.getAllByName(str4)));
                ArrayList arrayList3 = new ArrayList(listUnmodifiableList.size());
                Iterator it2 = listUnmodifiableList.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(new InetSocketAddress((InetAddress) it2.next(), aVarC.b));
                }
                v27.b bVarA = v27.a();
                bVarA.b(t67.c, strSubstring);
                arrayList2.add(new q37(Collections.unmodifiableList(arrayList3), bVarA.a()));
            }
            if (!arrayList2.isEmpty() || th == null) {
                return Collections.unmodifiableList(arrayList2);
            }
            throw th;
        }
    }

    public interface c {
    }

    static {
        try {
            Class.forName("javax.naming.directory.InitialDirContext");
            Class.forName("com.sun.jndi.dns.DnsContextFactory");
            e = null;
        } catch (ClassNotFoundException e) {
            e = e;
        } catch (Error e2) {
            e = e2;
        } catch (RuntimeException e3) {
            e = e3;
        }
        a = e;
    }

    @Override // j67.f
    public j67.e a() {
        if (a != null) {
            return null;
        }
        return new b(new a());
    }

    @Override // j67.f
    public Throwable b() {
        return a;
    }
}
