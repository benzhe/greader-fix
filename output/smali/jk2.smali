.class public final Ljk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lzj2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lsy0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lli2<",
            "Lgp1;",
            "Ldp1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lej2;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lgl2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Landroid/content/Context;",
            ">;",
            "Lmb3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lmb3<",
            "Lsy0;",
            ">;",
            "Lmb3<",
            "Lli2<",
            "Lgp1;",
            "Ldp1;",
            ">;>;",
            "Lmb3<",
            "Lej2;",
            ">;",
            "Lmb3<",
            "Lnl2;",
            ">;",
            "Lmb3<",
            "Lgl2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljk2;->a:Lmb3;

    .line 3
    iput-object p2, p0, Ljk2;->b:Lmb3;

    .line 4
    iput-object p3, p0, Ljk2;->c:Lmb3;

    .line 5
    iput-object p4, p0, Ljk2;->d:Lmb3;

    .line 6
    iput-object p5, p0, Ljk2;->e:Lmb3;

    .line 7
    iput-object p7, p0, Ljk2;->f:Lmb3;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Ljk2;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Ljk2;->b:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Ljk2;->c:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lsy0;

    iget-object v0, p0, Ljk2;->d:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lli2;

    iget-object v0, p0, Ljk2;->e:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lej2;

    .line 2
    new-instance v7, Lnl2;

    invoke-direct {v7}, Lnl2;-><init>()V

    .line 3
    iget-object v0, p0, Ljk2;->f:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lgl2;

    .line 4
    new-instance v0, Lzj2;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lzj2;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lsy0;Lli2;Lej2;Lnl2;Lgl2;)V

    return-object v0
.end method
