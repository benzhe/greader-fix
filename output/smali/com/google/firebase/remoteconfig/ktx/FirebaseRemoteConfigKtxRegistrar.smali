.class public final Lcom/google/firebase/remoteconfig/ktx/FirebaseRemoteConfigKtxRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxf5;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsf5<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "fire-cfg-ktx"

    const-string v1, "20.0.2"

    .line 1
    invoke-static {v0, v1}, Ln56;->F(Ljava/lang/String;Ljava/lang/String;)Lsf5;

    move-result-object v0

    invoke-static {v0}, Ln56;->r1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
