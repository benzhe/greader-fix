.class public final Los3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static j:Los3;


# instance fields
.field public final a:Lzr0;

.field public final b:Lwr3;

.field public final c:Ljava/lang/String;

.field public final d:Lt40;

.field public final e:Lv40;

.field public final f:Lu40;

.field public final g:Lcom/google/android/gms/internal/ads/zzbar;

.field public final h:Ljava/util/Random;

.field public final i:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/google/android/gms/ads/query/QueryInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Los3;

    invoke-direct {v0}, Los3;-><init>()V

    sput-object v0, Los3;->j:Los3;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    new-instance v0, Lzr0;

    invoke-direct {v0}, Lzr0;-><init>()V

    new-instance v10, Lwr3;

    new-instance v2, Lmr3;

    invoke-direct {v2}, Lmr3;-><init>()V

    new-instance v3, Ljr3;

    invoke-direct {v3}, Ljr3;-><init>()V

    new-instance v4, Lm30;

    invoke-direct {v4}, Lm30;-><init>()V

    new-instance v5, Lz90;

    invoke-direct {v5}, Lz90;-><init>()V

    new-instance v6, Ltn0;

    invoke-direct {v6}, Ltn0;-><init>()V

    new-instance v7, Lvo0;

    invoke-direct {v7}, Lvo0;-><init>()V

    new-instance v8, Lvk0;

    invoke-direct {v8}, Lvk0;-><init>()V

    new-instance v9, Lca0;

    invoke-direct {v9}, Lca0;-><init>()V

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lwr3;-><init>(Lmr3;Ljr3;Lm30;Lz90;Ltn0;Lvo0;Lvk0;Lca0;)V

    new-instance v1, Lt40;

    invoke-direct {v1}, Lt40;-><init>()V

    new-instance v2, Lv40;

    invoke-direct {v2}, Lv40;-><init>()V

    new-instance v3, Lu40;

    invoke-direct {v3}, Lu40;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 4
    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 5
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v11, 0x2

    if-ge v9, v11, :cond_0

    :try_start_0
    const-string v11, "MD5"

    .line 6
    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 7
    invoke-virtual {v11, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 8
    invoke-virtual {v11, v4}, Ljava/security/MessageDigest;->update([B)V

    const/16 v12, 0x8

    new-array v13, v12, [B

    .line 9
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    invoke-static {v11, v8, v13, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v7, v13}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 11
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbar;

    const v5, 0xc365f90

    invoke-direct {v4, v8, v5, v7}, Lcom/google/android/gms/internal/ads/zzbar;-><init>(IIZ)V

    .line 12
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    new-instance v7, Ljava/util/WeakHashMap;

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Los3;->a:Lzr0;

    .line 15
    iput-object v10, p0, Los3;->b:Lwr3;

    .line 16
    iput-object v1, p0, Los3;->d:Lt40;

    .line 17
    iput-object v2, p0, Los3;->e:Lv40;

    .line 18
    iput-object v3, p0, Los3;->f:Lu40;

    .line 19
    iput-object v6, p0, Los3;->c:Ljava/lang/String;

    .line 20
    iput-object v4, p0, Los3;->g:Lcom/google/android/gms/internal/ads/zzbar;

    .line 21
    iput-object v5, p0, Los3;->h:Ljava/util/Random;

    .line 22
    iput-object v7, p0, Los3;->i:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static a()Lu40;
    .locals 1

    .line 1
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    return-object v0
.end method
