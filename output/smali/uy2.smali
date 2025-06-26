.class public final Luy2;
.super Lax2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lax2<",
        "Lsw2;",
        "Lu23;",
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
    check-cast p1, Lu23;

    .line 2
    invoke-virtual {p1}, Lu23;->A()Lx23;

    move-result-object v0

    invoke-virtual {v0}, Lx23;->x()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lgx2;->a(Ljava/lang/String;)Lcx2;

    move-result-object v1

    .line 4
    invoke-interface {v1, v0}, Lcx2;->b(Ljava/lang/String;)Lsw2;

    move-result-object v0

    .line 5
    new-instance v1, Lsy2;

    invoke-virtual {p1}, Lu23;->A()Lx23;

    move-result-object p1

    invoke-virtual {p1}, Lx23;->y()Li23;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lsy2;-><init>(Li23;Lsw2;)V

    return-object v1
.end method
