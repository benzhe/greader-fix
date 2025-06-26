.class public final synthetic Lo02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg61;


# instance fields
.field public final a:Lzl2;


# direct methods
.method public constructor <init>(Lzl2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo02;->a:Lzl2;

    return-void
.end method


# virtual methods
.method public final getVideoController()Lsu3;
    .locals 2

    iget-object v0, p0, Lo02;->a:Lzl2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, v0, Lzl2;->a:Lig0;

    invoke-interface {v0}, Lig0;->getVideoController()Lsu3;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    new-instance v1, Lpl2;

    invoke-direct {v1, v0}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
