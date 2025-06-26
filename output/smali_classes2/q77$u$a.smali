.class public Lq77$u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq77$u;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lq77$u;


# direct methods
.method public constructor <init>(Lq77$u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$u$a;->e:Lq77$u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lq77$u$a;->e:Lq77$u;

    .line 2
    iget-object v1, v0, Lq77$u;->i:Lq77;

    iget-object v1, v1, Lq77;->n:Lb57;

    invoke-virtual {v1}, Lb57;->d()V

    .line 3
    iget-object v1, v0, Lq77$u;->e:Ld77;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 4
    iput-boolean v2, v0, Lq77$u;->g:Z

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean v1, v0, Lq77$u;->g:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v0, Lq77$u;->i:Lq77;

    .line 7
    iget-boolean v1, v1, Lq77;->H:Z

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, v0, Lq77$u;->h:Lb57$c;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Lb57$c;->a()V

    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lq77$u;->h:Lb57$c;

    goto :goto_0

    .line 11
    :cond_1
    iput-boolean v2, v0, Lq77$u;->g:Z

    .line 12
    :goto_0
    iget-object v1, v0, Lq77$u;->i:Lq77;

    .line 13
    iget-boolean v1, v1, Lq77;->H:Z

    if-nez v1, :cond_2

    .line 14
    iget-object v1, v0, Lq77$u;->i:Lq77;

    iget-object v2, v1, Lq77;->n:Lb57;

    new-instance v3, Lo77;

    new-instance v1, Ly77;

    invoke-direct {v1, v0}, Ly77;-><init>(Lq77$u;)V

    invoke-direct {v3, v1}, Lo77;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, v0, Lq77$u;->i:Lq77;

    .line 15
    iget-object v1, v1, Lq77;->f:Lb67;

    .line 16
    invoke-interface {v1}, Lb67;->x0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    .line 17
    invoke-virtual/range {v2 .. v7}, Lb57;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lb57$c;

    move-result-object v1

    iput-object v1, v0, Lq77$u;->h:Lb57$c;

    goto :goto_1

    .line 18
    :cond_2
    iget-object v0, v0, Lq77$u;->e:Ld77;

    sget-object v1, Lq77;->f0:Lx47;

    invoke-virtual {v0, v1}, Ld77;->b(Lx47;)V

    :cond_3
    :goto_1
    return-void
.end method
