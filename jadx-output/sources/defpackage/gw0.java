package defpackage;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class gw0 extends zv0 {
    public static final Set<String> j = Collections.synchronizedSet(new HashSet());
    public static final DecimalFormat k = new DecimalFormat("#,###");
    public File h;
    public boolean i;

    public gw0(iu0 iu0Var) {
        super(iu0Var);
        File cacheDir = this.e.getCacheDir();
        if (cacheDir == null) {
            is0.zzez("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(cacheDir, "admobVideoStreams");
        this.h = file;
        if (!file.isDirectory() && !this.h.mkdirs()) {
            String strValueOf = String.valueOf(this.h.getAbsolutePath());
            is0.zzez(strValueOf.length() != 0 ? "Could not create preload cache directory at ".concat(strValueOf) : new String("Could not create preload cache directory at "));
            this.h = null;
        } else {
            if (this.h.setReadable(true, false) && this.h.setExecutable(true, false)) {
                return;
            }
            String strValueOf2 = String.valueOf(this.h.getAbsolutePath());
            is0.zzez(strValueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(strValueOf2) : new String("Could not set cache file permissions at "));
            this.h = null;
        }
    }

    @Override // defpackage.zv0
    public final void a() {
        this.i = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01e6, code lost:
    
        if (r1 < 400) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01e8, code lost:
    
        r14 = "badUrl";
        r2 = java.lang.String.valueOf(java.lang.Integer.toString(r1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01f8, code lost:
    
        if (r2.length() == 0) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01fa, code lost:
    
        r2 = "HTTP request failed. Code: ".concat(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0200, code lost:
    
        r2 = new java.lang.String("HTTP request failed. Code: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0205, code lost:
    
        r4 = new java.lang.StringBuilder(java.lang.String.valueOf(r29).length() + 32);
        r4.append("HTTP status code ");
        r4.append(r1);
        r4.append(" at ");
        r4.append(r29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x022d, code lost:
    
        throw new java.io.IOException(r4.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x022e, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0231, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0234, code lost:
    
        r15 = r5.getContentLength();
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0238, code lost:
    
        if (r15 >= 0) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x023a, code lost:
    
        r1 = java.lang.String.valueOf(r29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0244, code lost:
    
        if (r1.length() == 0) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0246, code lost:
    
        r0 = "Stream cache aborted, missing content-length header at ".concat(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x024b, code lost:
    
        r0 = new java.lang.String("Stream cache aborted, missing content-length header at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0251, code lost:
    
        defpackage.is0.zzez(r0);
        l(r29, r11.getAbsolutePath(), "contentLengthMissing", null);
        defpackage.gw0.j.remove(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0262, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0263, code lost:
    
        r1 = defpackage.gw0.k.format(r15);
        r3 = ((java.lang.Integer) defpackage.os3.a().a(defpackage.y40.o)).intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x027a, code lost:
    
        if (r15 <= r3) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x027c, code lost:
    
        r2 = new java.lang.StringBuilder((java.lang.String.valueOf(r1).length() + 33) + java.lang.String.valueOf(r29).length());
        r2.append("Content length ");
        r2.append(r1);
        r2.append(" exceeds limit at ");
        r2.append(r29);
        defpackage.is0.zzez(r2.toString());
        r1 = java.lang.String.valueOf(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x02b5, code lost:
    
        if (r1.length() == 0) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x02b7, code lost:
    
        r0 = "File too big for full file cache. Size: ".concat(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x02bc, code lost:
    
        r0 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x02c2, code lost:
    
        l(r29, r11.getAbsolutePath(), "sizeExceeded", r0);
        defpackage.gw0.j.remove(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x02d0, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x02d5, code lost:
    
        r4 = new java.lang.StringBuilder((java.lang.String.valueOf(r1).length() + 20) + java.lang.String.valueOf(r29).length());
        r4.append("Caching ");
        r4.append(r1);
        r4.append(" bytes from ");
        r4.append(r29);
        defpackage.is0.zzdz(r4.toString());
        r5 = java.nio.channels.Channels.newChannel(r5.getInputStream());
        r4 = new java.io.FileOutputStream(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0310, code lost:
    
        r2 = r4.getChannel();
        r1 = java.nio.ByteBuffer.allocate(1048576);
        r16 = com.google.android.gms.ads.internal.zzr.zzlc();
        r17 = r16.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x032e, code lost:
    
        r9 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x032f, code lost:
    
        r6 = new com.google.android.gms.ads.internal.util.zzbp(((java.lang.Long) defpackage.os3.a().a(defpackage.y40.r)).longValue());
        r12 = ((java.lang.Long) defpackage.os3.a().a(defpackage.y40.q)).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0348, code lost:
    
        r20 = r5.read(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x034c, code lost:
    
        if (r20 < 0) goto L330;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x034e, code lost:
    
        r10 = r10 + r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0350, code lost:
    
        if (r10 <= r3) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0352, code lost:
    
        r14 = "sizeExceeded";
        r1 = java.lang.String.valueOf(java.lang.Integer.toString(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0362, code lost:
    
        if (r1.length() == 0) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0364, code lost:
    
        r1 = "File too big for full file cache. Size: ".concat(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x036a, code lost:
    
        r1 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0376, code lost:
    
        throw new java.io.IOException("stream cache file size limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0377, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0379, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x037d, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x037e, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x037f, code lost:
    
        r2 = r1;
        r1 = r9;
        r9 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0384, code lost:
    
        r1.flip();
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x038b, code lost:
    
        if (r2.write(r1) > 0) goto L336;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x038d, code lost:
    
        r1.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x039c, code lost:
    
        if ((r16.a() - r17) > (1000 * r12)) goto L331;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x039e, code lost:
    
        r20 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x03a2, code lost:
    
        if (r28.i != false) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x03a8, code lost:
    
        if (r6.tryAcquire() == false) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x03b0, code lost:
    
        r22 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x03b4, code lost:
    
        r23 = r9;
        r24 = r2;
        r25 = r3;
        r26 = r4;
        r21 = r5;
        r19 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x03cc, code lost:
    
        defpackage.zr0.b.post(new defpackage.yv0(r28, r29, r11.getAbsolutePath(), r10, r15));
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x03d3, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x03d4, code lost:
    
        r26 = r4;
        r23 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x03d9, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x03db, code lost:
    
        r1 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x03df, code lost:
    
        r24 = r2;
        r25 = r3;
        r26 = r4;
        r21 = r5;
        r19 = r6;
        r23 = r9;
        r22 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x03ef, code lost:
    
        r6 = r19;
        r1 = r20;
        r5 = r21;
        r14 = r22;
        r9 = r23;
        r2 = r24;
        r3 = r25;
        r4 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0401, code lost:
    
        r26 = r4;
        r23 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0410, code lost:
    
        throw new java.io.IOException("abort requested");
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0411, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0412, code lost:
    
        r14 = "externalAbort";
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0416, code lost:
    
        r26 = r4;
        r23 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x041c, code lost:
    
        r14 = "downloadTimeout";
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x041e, code lost:
    
        r0 = java.lang.Long.toString(r12);
        r2 = new java.lang.StringBuilder(java.lang.String.valueOf(r0).length() + 29);
        r2.append("Timeout exceeded. Limit: ");
        r2.append(r0);
        r2.append(" sec");
        r9 = r2.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0449, code lost:
    
        throw new java.io.IOException("stream cache time limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x044a, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x044d, code lost:
    
        r2 = r9;
        r1 = r23;
        r9 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0454, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x0456, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0458, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x0459, code lost:
    
        r26 = r4;
        r23 = r9;
        r22 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0462, code lost:
    
        r14 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0464, code lost:
    
        r1 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x0468, code lost:
    
        r26 = r4;
        r23 = r9;
        r22 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0470, code lost:
    
        r26.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0477, code lost:
    
        if (defpackage.is0.isLoggable(3) == false) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0479, code lost:
    
        r1 = defpackage.gw0.k.format(r10);
        r3 = new java.lang.StringBuilder((java.lang.String.valueOf(r1).length() + 22) + java.lang.String.valueOf(r29).length());
        r3.append("Preloaded ");
        r3.append(r1);
        r3.append(" bytes from ");
        r3.append(r29);
        defpackage.is0.zzdz(r3.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x04b0, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x04b2, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x04b6, code lost:
    
        r11.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x04bd, code lost:
    
        if (r0.isFile() == false) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x04bf, code lost:
    
        r0.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x04c7, code lost:
    
        r0.createNewFile();
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x04de, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x04e1, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x04e5, code lost:
    
        r26 = r4;
        r1 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x04e8, code lost:
    
        r22 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x04eb, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x04ee, code lost:
    
        r26 = r4;
        r1 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x04f2, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01e0, code lost:
    
        r1 = r5.getResponseCode();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0523  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0535  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0559  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0582  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0598  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0088  */
    /* JADX WARN: Type inference failed for: r1v15, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    @Override // defpackage.zv0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean r(java.lang.String r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gw0.r(java.lang.String):boolean");
    }

    public final File t(File file) {
        return new File(this.h, String.valueOf(file.getName()).concat(".done"));
    }
}
