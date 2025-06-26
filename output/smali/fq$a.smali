.class public final Lfq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfq;->a(Lbc7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lfq;

.field public final synthetic b:Lbc7;


# direct methods
.method public constructor <init>(Lfq;Lbc7;)V
    .locals 0

    iput-object p1, p0, Lfq$a;->a:Lfq;

    iput-object p2, p0, Lfq$a;->b:Lbc7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lin;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lfq$a;->b:Lbc7;

    const-string v1, "it"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Leh7$a;

    invoke-virtual {v0}, Leh7$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lin;->a:I

    .line 3
    iget-object v1, p0, Lfq$a;->a:Lfq;

    iget-object v1, v1, Lfq;->a:Lgq$a;

    iget-object v1, v1, Lgq$a;->e:Lgq;

    invoke-static {v1, v0}, Lgq;->f(Lgq;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object p1, p0, Lfq$a;->b:Lbc7;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Leh7$a;

    invoke-virtual {p1, v0}, Leh7$a;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lfq$a;->b:Lbc7;

    invoke-static {p1}, Lmq;->a(Lin;)Lmq;

    move-result-object p1

    check-cast v0, Leh7$a;

    invoke-virtual {v0, p1}, Leh7$a;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
