.class public final Lmo2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Law2<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lko2;


# direct methods
.method public constructor <init>(Lko2;Ljava/lang/Object;Ljava/util/List;Lno2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmo2;->c:Lko2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lmo2;->a:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lmo2;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Lqo2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;)",
            "Lqo2<",
            "TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmo2;->b:Ljava/util/List;

    invoke-static {v0}, Lvt2;->q(Ljava/lang/Iterable;)Luv2;

    move-result-object v0

    .line 2
    sget-object v1, Lpo2;->e:Ljava/util/concurrent/Callable;

    sget-object v2, Lms0;->f:Lzv2;

    invoke-virtual {v0, v1, v2}, Luv2;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v6

    .line 3
    new-instance v1, Lqo2;

    iget-object v4, p0, Lmo2;->c:Lko2;

    iget-object v5, p0, Lmo2;->a:Ljava/lang/Object;

    iget-object v7, p0, Lmo2;->b:Ljava/util/List;

    .line 4
    iget-object v2, v4, Lko2;->a:Lzv2;

    .line 5
    invoke-virtual {v0, p1, v2}, Luv2;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lqo2;-><init>(Lko2;Ljava/lang/Object;Law2;Ljava/util/List;Law2;)V

    return-object v1
.end method
