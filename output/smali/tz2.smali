.class public final Ltz2;
.super Lax2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lax2<",
        "Lfx2;",
        "Ly13;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lax2;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Ly13;

    .line 2
    invoke-virtual {p1}, Ly13;->D()Lc23;

    move-result-object v0

    invoke-virtual {v0}, Lc23;->y()Lx13;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ly13;->B()Lk53;

    move-result-object v1

    invoke-virtual {v1}, Lk53;->d()[B

    move-result-object v1

    .line 4
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ly13;->D()Lc23;

    move-result-object p1

    invoke-virtual {p1}, Lc23;->x()I

    move-result p1

    .line 6
    sget-object v1, Lvz2;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 7
    new-instance v0, Ll43;

    new-instance v1, Lj43;

    const-string v3, "HMACSHA512"

    invoke-direct {v1, v3, v2}, Lj43;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Ll43;-><init>(Lyz2;I)V

    return-object v0

    .line 8
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance v0, Ll43;

    new-instance v1, Lj43;

    const-string v3, "HMACSHA256"

    invoke-direct {v1, v3, v2}, Lj43;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Ll43;-><init>(Lyz2;I)V

    return-object v0

    .line 10
    :cond_2
    new-instance v0, Ll43;

    new-instance v1, Lj43;

    const-string v3, "HMACSHA1"

    invoke-direct {v1, v3, v2}, Lj43;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Ll43;-><init>(Lyz2;I)V

    return-object v0
.end method
