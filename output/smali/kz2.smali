.class public final Lkz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkx2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkx2<",
        "Lvw2;",
        "Lvw2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lvw2;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lvw2;

    return-object v0
.end method

.method public final synthetic b(Lhx2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Llz2;

    invoke-direct {v0, p1}, Llz2;-><init>(Lhx2;)V

    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lvw2;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lvw2;

    return-object v0
.end method
