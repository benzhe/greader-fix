.class public final Lk43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyz2;


# instance fields
.field public final a:Ljavax/crypto/SecretKey;

.field public b:[B

.field public c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    invoke-static {v0}, Lp43;->b(I)V

    .line 3
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lk43;->a:Ljavax/crypto/SecretKey;

    .line 4
    sget-object p1, Lb43;->e:Lb43;

    const-string v1, "AES/ECB/NoPadding"

    invoke-virtual {p1, v1}, Lb43;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 6
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 7
    invoke-static {p1}, Lc50;->E4([B)[B

    move-result-object p1

    iput-object p1, p0, Lk43;->b:[B

    .line 8
    invoke-static {p1}, Lc50;->E4([B)[B

    move-result-object p1

    iput-object p1, p0, Lk43;->c:[B

    return-void
.end method


# virtual methods
.method public final a([BI)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x10

    if-gt p2, v0, :cond_3

    .line 1
    sget-object v1, Lb43;->e:Lb43;

    const-string v2, "AES/ECB/NoPadding"

    invoke-virtual {v1, v2}, Lb43;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    .line 2
    iget-object v2, p0, Lk43;->a:Ljavax/crypto/SecretKey;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3
    array-length v2, p1

    int-to-double v4, v2

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    shl-int/lit8 v3, v2, 0x4

    .line 4
    array-length v4, p1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, -0x1

    shl-int/lit8 v3, v3, 0x4

    .line 5
    iget-object v4, p0, Lk43;->b:[B

    invoke-static {p1, v3, v4, v5, v0}, Lc50;->B2([BI[BII)[B

    move-result-object v3

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, -0x1

    shl-int/lit8 v3, v3, 0x4

    .line 6
    array-length v4, p1

    .line 7
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 8
    array-length v4, v3

    if-ge v4, v0, :cond_2

    .line 9
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 10
    array-length v3, v3

    const/16 v6, -0x80

    aput-byte v6, v4, v3

    .line 11
    iget-object v3, p0, Lk43;->c:[B

    .line 12
    invoke-static {v4, v3}, Lc50;->K3([B[B)[B

    move-result-object v3

    :goto_0
    new-array v4, v0, [B

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v7, v2, -0x1

    if-ge v6, v7, :cond_1

    shl-int/lit8 v7, v6, 0x4

    .line 13
    invoke-static {v4, v5, p1, v7, v0}, Lc50;->B2([BI[BII)[B

    move-result-object v4

    .line 14
    invoke-virtual {v1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {v3, v4}, Lc50;->K3([B[B)[B

    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x must be smaller than a block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "outputLength too large, max is 16 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
