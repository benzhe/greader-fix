.class public final Lpz2;
.super Lzw2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzw2<",
        "La03;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, La03;

    const/4 v1, 0x1

    new-array v1, v1, [Lax2;

    new-instance v2, Loz2;

    const-class v3, Lfx2;

    invoke-direct {v2, v3}, Loz2;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lzw2;-><init>(Ljava/lang/Class;[Lax2;)V

    return-void
.end method

.method public static h(Lf03;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf03;->x()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lf03;->x()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too long"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too short"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    return-object v0
.end method

.method public final c()Lg23$a;
    .locals 1

    .line 1
    sget-object v0, Lg23$a;->g:Lg23$a;

    return-object v0
.end method

.method public final e()Lbx2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbx2<",
            "Lb03;",
            "La03;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrz2;

    const-class v1, Lb03;

    invoke-direct {v0, v1}, Lrz2;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public final f(Le83;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, La03;

    .line 2
    invoke-virtual {p1}, La03;->x()I

    move-result v0

    invoke-static {v0}, Lp43;->a(I)V

    .line 3
    invoke-virtual {p1}, La03;->B()Lk53;

    move-result-object v0

    invoke-virtual {v0}, Lk53;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, La03;->D()Lf03;

    move-result-object p1

    invoke-static {p1}, Lpz2;->h(Lf03;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic g(Lk53;)Le83;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le73;
        }
    .end annotation

    .line 1
    invoke-static {}, Le63;->a()Le63;

    move-result-object v0

    invoke-static {p1, v0}, La03;->G(Lk53;Le63;)La03;

    move-result-object p1

    return-object p1
.end method
