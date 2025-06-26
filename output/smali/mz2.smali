.class public final Lmz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq33;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:Lw03;

.field public d:Lg03;

.field public e:I


# direct methods
.method public constructor <init>(Li23;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Li23;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmz2;->a:Ljava/lang/String;

    .line 3
    sget-object v1, Lvx2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Li23;->y()Lk53;

    move-result-object v0

    invoke-static {}, Le63;->a()Le63;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lz03;->z(Lk53;Le63;)Lz03;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lpx2;->i(Li23;)Le83;

    move-result-object p1

    check-cast p1, Lw03;

    iput-object p1, p0, Lmz2;->c:Lw03;

    .line 7
    invoke-virtual {v0}, Lz03;->x()I

    move-result p1

    iput p1, p0, Lmz2;->b:I
    :try_end_0
    .catch Le73; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :cond_0
    sget-object v1, Lvx2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    :try_start_1
    invoke-virtual {p1}, Li23;->y()Lk53;

    move-result-object v0

    invoke-static {}, Le63;->a()Le63;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lj03;->A(Lk53;Le63;)Lj03;

    move-result-object v0

    .line 12
    invoke-static {p1}, Lpx2;->i(Li23;)Le83;

    move-result-object p1

    check-cast p1, Lg03;

    iput-object p1, p0, Lmz2;->d:Lg03;

    .line 13
    invoke-virtual {v0}, Lj03;->x()Ln03;

    move-result-object p1

    invoke-virtual {p1}, Ln03;->x()I

    move-result p1

    iput p1, p0, Lmz2;->e:I

    .line 14
    invoke-virtual {v0}, Lj03;->y()Lb23;

    move-result-object p1

    invoke-virtual {p1}, Lb23;->x()I

    move-result p1

    .line 15
    iget v0, p0, Lmz2;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lmz2;->b:I
    :try_end_1
    .catch Le73; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 16
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 17
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v1, "unsupported AEAD DEM key type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
