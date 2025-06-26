.class public final Ldy2;
.super Lax2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lax2<",
        "Lsw2;",
        "Lr03;",
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lr03;

    .line 2
    new-instance v0, Lj33;

    .line 3
    invoke-virtual {p1}, Lr03;->B()Lk53;

    move-result-object v1

    invoke-virtual {v1}, Lk53;->d()[B

    move-result-object v1

    invoke-virtual {p1}, Lr03;->D()Lv03;

    move-result-object p1

    invoke-virtual {p1}, Lv03;->x()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lj33;-><init>([BI)V

    return-object v0
.end method
