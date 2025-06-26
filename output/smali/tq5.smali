.class public Ltq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfp5;


# instance fields
.field public final a:Lmq5;

.field public final b:Lzq5;

.field public final c:Lxp5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp5<",
            "Lmr5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmq5;Lzq5;Lxp5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmq5;",
            "Lzq5;",
            "Lxp5<",
            "Lmr5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ltq5;->a:Lmq5;

    .line 3
    iput-object p2, p0, Ltq5;->b:Lzq5;

    .line 4
    iput-object p3, p0, Ltq5;->c:Lxp5;

    return-void
.end method


# virtual methods
.method public remove()V
    .locals 4

    .line 1
    iget-object v0, p0, Ltq5;->c:Lxp5;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lxp5;->c:Z

    .line 3
    iget-object v0, p0, Ltq5;->a:Lmq5;

    iget-object v1, p0, Ltq5;->b:Lzq5;

    .line 4
    iget-object v2, v0, Lmq5;->c:Lex5;

    .line 5
    iget-object v2, v2, Lex5;->a:Lex5$c;

    .line 6
    monitor-enter v2

    .line 7
    monitor-exit v2

    .line 8
    iget-object v2, v0, Lmq5;->c:Lex5;

    .line 9
    new-instance v3, Llq5;

    invoke-direct {v3, v0, v1}, Llq5;-><init>(Lmq5;Lzq5;)V

    .line 10
    new-instance v0, Lcx5;

    invoke-direct {v0, v3}, Lcx5;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v2, v0}, Lex5;->a(Ljava/util/concurrent/Callable;)Le45;

    return-void
.end method
