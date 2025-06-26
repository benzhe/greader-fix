.class public final Ljn3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lj40;

.field public final f:Lc90;

.field public final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lj40;Lc90;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljn3;->e:Lj40;

    .line 3
    iput-object p2, p0, Ljn3;->f:Lc90;

    .line 4
    iput-object p3, p0, Ljn3;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ljn3;->e:Lj40;

    invoke-virtual {v0}, Lj40;->isCanceled()Z

    .line 2
    iget-object v0, p0, Ljn3;->f:Lc90;

    .line 3
    iget-object v1, v0, Lc90;->c:Luh0;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    iget-object v1, p0, Ljn3;->e:Lj40;

    iget-object v0, v0, Lc90;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lj40;->l(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Ljn3;->e:Lj40;

    invoke-virtual {v0, v1}, Lj40;->zzb(Luh0;)V

    .line 6
    :goto_1
    iget-object v0, p0, Ljn3;->f:Lc90;

    iget-boolean v0, v0, Lc90;->d:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Ljn3;->e:Lj40;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lj40;->zzc(Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, Ljn3;->e:Lj40;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lj40;->w(Ljava/lang/String;)V

    .line 9
    :goto_2
    iget-object v0, p0, Ljn3;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
