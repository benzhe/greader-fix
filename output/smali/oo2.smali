.class public final Loo2;
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

.field public final synthetic b:Lko2;


# direct methods
.method public constructor <init>(Lko2;Ljava/lang/Object;Lno2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loo2;->b:Lko2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Loo2;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;Lzv2;)Lqo2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;",
            "Lzv2;",
            ")",
            "Lqo2<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lqo2;

    iget-object v1, p0, Loo2;->b:Lko2;

    iget-object v2, p0, Loo2;->a:Ljava/lang/Object;

    .line 2
    sget-object v3, Lko2;->d:Law2;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {p2, p1}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lqo2;-><init>(Lko2;Ljava/lang/Object;Law2;Ljava/util/List;Law2;)V

    return-object v6
.end method

.method public final b(Law2;)Lqo2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Law2<",
            "TO;>;)",
            "Lqo2<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lqo2;

    iget-object v1, p0, Loo2;->b:Lko2;

    iget-object v2, p0, Loo2;->a:Ljava/lang/Object;

    .line 2
    sget-object v3, Lko2;->d:Law2;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lqo2;-><init>(Lko2;Ljava/lang/Object;Law2;Ljava/util/List;Law2;)V

    return-object v6
.end method
