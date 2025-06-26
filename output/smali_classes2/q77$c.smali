.class public final Lq77$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq77;->k(Li37;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:Li37;

.field public final synthetic g:Lq77;


# direct methods
.method public constructor <init>(Lq77;Ljava/lang/Runnable;Li37;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq77$c;->g:Lq77;

    iput-object p2, p0, Lq77$c;->e:Ljava/lang/Runnable;

    iput-object p3, p0, Lq77$c;->f:Li37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq77$c;->g:Lq77;

    .line 2
    iget-object v1, v0, Lq77;->s:Le67;

    .line 3
    iget-object v2, p0, Lq77$c;->e:Ljava/lang/Runnable;

    .line 4
    iget-object v0, v0, Lq77;->h:Ljava/util/concurrent/Executor;

    .line 5
    iget-object v3, p0, Lq77$c;->f:Li37;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "callback"

    .line 7
    invoke-static {v2, v4}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "executor"

    .line 8
    invoke-static {v0, v4}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "source"

    .line 9
    invoke-static {v3, v4}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v4, Le67$a;

    invoke-direct {v4, v2, v0}, Le67$a;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    iget-object v0, v1, Le67;->b:Li37;

    if-eq v0, v3, :cond_0

    .line 12
    iget-object v0, v4, Le67$a;->b:Ljava/util/concurrent/Executor;

    iget-object v1, v4, Le67$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v1, Le67;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
