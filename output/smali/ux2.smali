.class public Lux2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkx2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lux2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkx2<",
        "Lsw2;",
        "Lsw2;",
        ">;"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lux2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

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
            "Lsw2;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lsw2;

    return-object v0
.end method

.method public final synthetic b(Lhx2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lux2$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lux2$a;-><init>(Lhx2;Lwx2;)V

    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lsw2;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lsw2;

    return-object v0
.end method
