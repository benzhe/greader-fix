.class public final Lzl2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lig0;


# direct methods
.method public constructor <init>(Lig0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzl2;->a:Lig0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lzl2;->a:Lig0;

    invoke-interface {v0}, Lig0;->isInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Lpl2;

    invoke-direct {v1, v0}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lzl2;->a:Lig0;

    invoke-interface {v0, p1}, Lig0;->setImmersiveMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    new-instance v0, Lpl2;

    invoke-direct {v0, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
