.class public Lgy6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lgy6;->b:[B

    :try_start_0
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const-string v1, "UTF-8"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v0, Lgy6;->b:[B

    .line 4
    :goto_0
    sput-object v0, Lgy6;->a:[B

    const/16 v0, 0x7f

    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_1

    sput-object v0, Lgy6;->c:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 12

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 3
    :goto_0
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x4

    .line 4
    div-int/2addr v1, v2

    .line 5
    new-array v1, v1, [B

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    add-int v8, v4, v0

    const/4 v9, 0x0

    if-ge v5, v8, :cond_4

    .line 6
    aget-byte v8, p0, v5

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    .line 7
    sget-object v10, Lgy6;->c:[B

    aget-byte v10, v10, v8

    const/4 v11, -0x5

    if-lt v10, v11, :cond_3

    const/4 v11, -0x1

    if-lt v10, v11, :cond_2

    add-int/lit8 v10, v6, 0x1

    .line 8
    aput-byte v8, v3, v6

    const/4 v6, 0x3

    if-le v10, v6, :cond_1

    .line 9
    invoke-static {v3, v4, v1, v7}, Lgy6;->b([BI[BI)I

    move-result v6

    add-int/2addr v7, v6

    const/16 v6, 0x3d

    if-ne v8, v6, :cond_0

    goto :goto_3

    :cond_0
    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    move v6, v10

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Bad Base64 input character at "

    const-string v3, ": "

    invoke-static {v1, v5, v3}, Ljo;->A(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte p0, p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "(decimal)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object p0, v9

    goto :goto_4

    .line 11
    :cond_4
    :goto_3
    new-array p0, v7, [B

    .line 12
    invoke-static {v1, v4, p0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-eqz p0, :cond_6

    .line 13
    array-length v0, p0

    if-lt v0, v2, :cond_6

    .line 14
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const v1, 0x8b1f

    if-ne v1, v0, :cond_6

    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 15
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 16
    :try_start_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 17
    :try_start_3
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    :goto_5
    :try_start_4
    invoke-virtual {v3, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_5

    .line 19
    invoke-virtual {v1, v0, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 20
    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 21
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_b

    :catchall_0
    move-exception p0

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object v3, v9

    :goto_6
    move-object v9, v2

    goto :goto_7

    :catch_1
    move-object v3, v9

    :catch_2
    move-object v9, v2

    goto :goto_8

    :catchall_2
    move-exception p0

    move-object v3, v9

    :goto_7
    move-object v0, v9

    move-object v9, v1

    goto :goto_9

    :catch_3
    move-object v3, v9

    :goto_8
    move-object v0, v9

    move-object v9, v1

    goto :goto_a

    :catchall_3
    move-exception p0

    move-object v0, v9

    move-object v3, v0

    :goto_9
    :try_start_6
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 22
    :catch_4
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 23
    :catch_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 24
    :catch_6
    throw p0

    :catch_7
    move-object v0, v9

    move-object v3, v0

    .line 25
    :goto_a
    :try_start_9
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    move-object v2, v0

    .line 26
    :catch_9
    :goto_b
    :try_start_a
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 27
    :catch_a
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :cond_6
    return-object p0
.end method

.method public static b([BI[BI)I
    .locals 7

    add-int/lit8 v0, p1, 0x2

    .line 1
    aget-byte v1, p0, v0

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    sget-object v0, Lgy6;->c:[B

    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v1

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    .line 3
    aput-byte p0, p2, p3

    return v3

    :cond_0
    add-int/lit8 v1, p1, 0x3

    .line 4
    aget-byte v4, p0, v1

    const/4 v5, 0x2

    if-ne v4, v2, :cond_1

    .line 5
    sget-object v1, Lgy6;->c:[B

    aget-byte v2, p0, p1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/2addr p1, v3

    aget-byte p1, p0, p1

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v2

    aget-byte p0, p0, v0

    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x6

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    .line 6
    aput-byte p1, p2, p3

    add-int/2addr p3, v3

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 7
    aput-byte p0, p2, p3

    return v5

    .line 8
    :cond_1
    :try_start_0
    sget-object v2, Lgy6;->c:[B

    aget-byte v4, p0, p1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x12

    add-int/lit8 v6, p1, 0x1

    aget-byte v6, p0, v6

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v4, v6

    aget-byte v6, p0, v0

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v4, v6

    aget-byte v6, p0, v1

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    .line 9
    aput-byte v4, p2, p3

    add-int/lit8 v4, p3, 0x1

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    .line 10
    aput-byte v6, p2, v4

    add-int/2addr p3, v5

    int-to-byte v2, v2

    .line 11
    aput-byte v2, p2, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x3

    return p0

    .line 12
    :catch_0
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, ""

    invoke-static {p3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v4, p0, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lgy6;->c:[B

    aget-byte v6, p0, p1

    aget-byte v6, v5, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/2addr p1, v3

    aget-byte v3, p0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p0, p1

    aget-byte p1, v5, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-byte v2, p0, v0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v0

    aget-byte v0, v5, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-byte p3, p0, v1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p0, p0, v1

    aget-byte p0, v5, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static c([BII[BI)[B
    .locals 4

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 1
    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v1, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 v0, p0, 0x18

    :cond_2
    or-int p0, v1, v0

    const/16 p1, 0x3d

    const/4 v0, 0x3

    if-eq p2, v2, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v0, :cond_3

    return-object p3

    .line 2
    :cond_3
    sget-object p1, Lgy6;->a:[B

    ushr-int/lit8 p2, p0, 0x12

    aget-byte p2, p1, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x3f

    .line 3
    aget-byte v1, p1, v1

    aput-byte v1, p3, p2

    add-int/lit8 p2, p4, 0x2

    ushr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x3f

    .line 4
    aget-byte v1, p1, v1

    aput-byte v1, p3, p2

    add-int/2addr p4, v0

    and-int/lit8 p0, p0, 0x3f

    .line 5
    aget-byte p0, p1, p0

    aput-byte p0, p3, p4

    return-object p3

    .line 6
    :cond_4
    sget-object p2, Lgy6;->a:[B

    ushr-int/lit8 v1, p0, 0x12

    aget-byte v1, p2, v1

    aput-byte v1, p3, p4

    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 7
    aget-byte v2, p2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    .line 8
    aget-byte p0, p2, p0

    aput-byte p0, p3, v1

    add-int/2addr p4, v0

    .line 9
    aput-byte p1, p3, p4

    return-object p3

    .line 10
    :cond_5
    sget-object p2, Lgy6;->a:[B

    ushr-int/lit8 v1, p0, 0x12

    aget-byte v1, p2, v1

    aput-byte v1, p3, p4

    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    .line 11
    aget-byte p0, p2, p0

    aput-byte p0, p3, v1

    add-int/lit8 p0, p4, 0x2

    .line 12
    aput-byte p1, p3, p0

    add-int/2addr p4, v0

    .line 13
    aput-byte p1, p3, p4

    return-object p3
.end method

.method public static d([B)Ljava/lang/String;
    .locals 12

    .line 1
    array-length v0, p0

    const-string v1, "UTF-8"

    mul-int/lit8 v2, v0, 0x4

    const/4 v3, 0x3

    .line 2
    div-int/2addr v2, v3

    .line 3
    rem-int/lit8 v4, v0, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-lez v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    add-int/2addr v4, v2

    const/16 v7, 0x4c

    div-int/2addr v2, v7

    add-int/2addr v4, v2

    new-array v2, v4, [B

    add-int/lit8 v4, v0, -0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v8, v4, :cond_2

    add-int/lit8 v11, v8, 0x0

    .line 4
    invoke-static {p0, v11, v3, v2, v9}, Lgy6;->c([BII[BI)[B

    add-int/2addr v10, v5

    if-ne v10, v7, :cond_1

    add-int/lit8 v10, v9, 0x4

    const/16 v11, 0xa

    .line 5
    aput-byte v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    :cond_1
    add-int/lit8 v8, v8, 0x3

    add-int/2addr v9, v5

    goto :goto_1

    :cond_2
    if-ge v8, v0, :cond_3

    add-int v3, v6, v8

    sub-int/2addr v0, v8

    .line 6
    invoke-static {p0, v3, v0, v2, v9}, Lgy6;->c([BII[BI)[B

    add-int/lit8 v9, v9, 0x4

    .line 7
    :cond_3
    :try_start_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v6, v9, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 8
    :catch_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v6, v9}, Ljava/lang/String;-><init>([BII)V

    :goto_2
    return-object p0
.end method
