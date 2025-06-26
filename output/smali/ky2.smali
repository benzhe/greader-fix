.class public final Lky2;
.super Lax2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lax2<",
        "Lsw2;",
        "La13;",
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
    check-cast p1, La13;

    .line 2
    new-instance v0, Lbz2;

    invoke-virtual {p1}, La13;->A()Lk53;

    move-result-object p1

    invoke-virtual {p1}, Lk53;->d()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lbz2;-><init>([B)V

    return-object v0
.end method
