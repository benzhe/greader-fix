.class public final Lsp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lpp2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lwp2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lfq2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lwp2;",
            ">;",
            "Lmb3<",
            "Lfq2;",
            ">;",
            "Lmb3<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsp2;->a:Lmb3;

    .line 3
    iput-object p2, p0, Lsp2;->b:Lmb3;

    .line 4
    iput-object p3, p0, Lsp2;->c:Lmb3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lsp2;->a:Lmb3;

    invoke-static {v0}, Ldb3;->b(Lmb3;)Lxa3;

    move-result-object v0

    iget-object v1, p0, Lsp2;->b:Lmb3;

    invoke-static {v1}, Ldb3;->b(Lmb3;)Lxa3;

    move-result-object v1

    iget-object v2, p0, Lsp2;->c:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    sget-object v3, Ly40;->f5:Lo40;

    .line 3
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    new-instance v1, Lrp2;

    invoke-interface {v0}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpp2;

    invoke-direct {v1, v0, v2}, Lrp2;-><init>(Lpp2;Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v1}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lpp2;

    :goto_0
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 8
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1
.end method
