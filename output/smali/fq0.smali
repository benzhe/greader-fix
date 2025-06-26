.class public final synthetic Lfq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lcq0;

.field public final f:Lcq0$a;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcq0;Lcq0$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfq0;->e:Lcq0;

    iput-object p2, p0, Lfq0;->f:Lcq0$a;

    iput-object p3, p0, Lfq0;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lfq0;->e:Lcq0;

    iget-object v1, p0, Lfq0;->f:Lcq0$a;

    iget-object v2, p0, Lfq0;->g:Ljava/lang/String;

    .line 1
    iget-object v3, v0, Lcq0;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lny0;

    if-eqz v3, :cond_0

    .line 2
    :try_start_0
    iget-object v3, v0, Lcq0;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lny0;

    invoke-interface {v1, v3}, Lcq0$a;->a(Lny0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v2, v1}, Lcq0;->o(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method
