.class public final Loz2;
.super Lax2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lax2<",
        "Lfx2;",
        "La03;",
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, La03;

    .line 2
    new-instance v0, Ll43;

    new-instance v1, Lk43;

    .line 3
    invoke-virtual {p1}, La03;->B()Lk53;

    move-result-object v2

    invoke-virtual {v2}, Lk53;->d()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lk43;-><init>([B)V

    invoke-virtual {p1}, La03;->D()Lf03;

    move-result-object p1

    invoke-virtual {p1}, Lf03;->x()I

    move-result p1

    invoke-direct {v0, v1, p1}, Ll43;-><init>(Lyz2;I)V

    return-object v0
.end method
