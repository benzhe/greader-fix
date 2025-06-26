.class public final Lxx1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvx1;

.field public final b:Lzv2;


# direct methods
.method public constructor <init>(Lvx1;Lzv2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxx1;->a:Lvx1;

    .line 3
    iput-object p2, p0, Lxx1;->b:Lzv2;

    return-void
.end method


# virtual methods
.method public final a(Ljo2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljo2<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxx1;->b:Lzv2;

    iget-object v1, p0, Lxx1;->a:Lvx1;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v2, Lwx1;

    invoke-direct {v2, v1}, Lwx1;-><init>(Lvx1;)V

    .line 4
    invoke-interface {v0, v2}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v0

    .line 5
    new-instance v1, Lzx1;

    invoke-direct {v1, p1}, Lzx1;-><init>(Ljo2;)V

    iget-object p1, p0, Lxx1;->b:Lzv2;

    .line 6
    new-instance v2, Lsv2;

    invoke-direct {v2, v0, v1}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-interface {v0, v2, p1}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
