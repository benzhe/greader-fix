.class public final Lvy2;
.super Lzw2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzw2<",
        "Lu23;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lu23;

    const/4 v1, 0x1

    new-array v1, v1, [Lax2;

    new-instance v2, Luy2;

    const-class v3, Lsw2;

    invoke-direct {v2, v3}, Luy2;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lzw2;-><init>(Ljava/lang/Class;[Lax2;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    return-object v0
.end method

.method public final c()Lg23$a;
    .locals 1

    .line 1
    sget-object v0, Lg23$a;->j:Lg23$a;

    return-object v0
.end method

.method public final e()Lbx2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbx2<",
            "Lx23;",
            "Lu23;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lxy2;

    const-class v1, Lx23;

    invoke-direct {v0, p0, v1}, Lxy2;-><init>(Lvy2;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic f(Le83;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu23;

    .line 2
    invoke-virtual {p1}, Lu23;->x()I

    move-result p1

    invoke-static {p1}, Lp43;->a(I)V

    return-void
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

    invoke-static {p1, v0}, Lu23;->E(Lk53;Le63;)Lu23;

    move-result-object p1

    return-object p1
.end method
