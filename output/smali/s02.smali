.class public final synthetic Ls02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg61;


# instance fields
.field public final a:Lmz1;


# direct methods
.method public constructor <init>(Lmz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls02;->a:Lmz1;

    return-void
.end method


# virtual methods
.method public final getVideoController()Lsu3;
    .locals 2

    iget-object v0, p0, Ls02;->a:Lmz1;

    .line 1
    :try_start_0
    iget-object v0, v0, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lvi0;

    invoke-interface {v0}, Lvi0;->getVideoController()Lsu3;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lpl2;

    invoke-direct {v1, v0}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
