.class public final Lqy2;
.super Lax2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lax2<",
        "Lsw2;",
        "Lq23;",
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lq23;

    .line 2
    invoke-virtual {p1}, Lq23;->A()Lt23;

    move-result-object p1

    invoke-virtual {p1}, Lt23;->x()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lgx2;->a(Ljava/lang/String;)Lcx2;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Lcx2;->b(Ljava/lang/String;)Lsw2;

    move-result-object p1

    return-object p1
.end method
