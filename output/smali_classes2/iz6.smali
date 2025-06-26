.class public final Liz6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liz6$d;,
        Liz6$c;,
        Liz6$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Z

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Lwz6;

.field public final i:Lbz6;

.field public final j:Lty6;

.field public final k:Lf07;

.field public final l:Lb07;

.field public final m:Lgz6;

.field public final n:Lf07;

.field public final o:Lf07;


# direct methods
.method public constructor <init>(Liz6$b;Liz6$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Liz6$b;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Liz6;->a:Landroid/content/res/Resources;

    .line 4
    iget-object p2, p1, Liz6$b;->b:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p2, p0, Liz6;->b:Ljava/util/concurrent/Executor;

    .line 6
    iget-object p2, p1, Liz6$b;->c:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p2, p0, Liz6;->c:Ljava/util/concurrent/Executor;

    .line 8
    iget p2, p1, Liz6$b;->f:I

    .line 9
    iput p2, p0, Liz6;->f:I

    .line 10
    iget p2, p1, Liz6$b;->g:I

    .line 11
    iput p2, p0, Liz6;->g:I

    .line 12
    iget-object p2, p1, Liz6$b;->i:Lwz6;

    .line 13
    iput-object p2, p0, Liz6;->h:Lwz6;

    .line 14
    iget-object p2, p1, Liz6$b;->l:Lty6;

    .line 15
    iput-object p2, p0, Liz6;->j:Lty6;

    .line 16
    iget-object p2, p1, Liz6$b;->k:Lbz6;

    .line 17
    iput-object p2, p0, Liz6;->i:Lbz6;

    .line 18
    iget-object p2, p1, Liz6$b;->p:Lgz6;

    .line 19
    iput-object p2, p0, Liz6;->m:Lgz6;

    .line 20
    iget-object p2, p1, Liz6$b;->n:Lf07;

    .line 21
    iput-object p2, p0, Liz6;->k:Lf07;

    .line 22
    iget-object v0, p1, Liz6$b;->o:Lb07;

    .line 23
    iput-object v0, p0, Liz6;->l:Lb07;

    .line 24
    iget-boolean v0, p1, Liz6$b;->d:Z

    .line 25
    iput-boolean v0, p0, Liz6;->d:Z

    .line 26
    iget-boolean p1, p1, Liz6$b;->e:Z

    .line 27
    iput-boolean p1, p0, Liz6;->e:Z

    .line 28
    new-instance p1, Liz6$c;

    invoke-direct {p1, p2}, Liz6$c;-><init>(Lf07;)V

    iput-object p1, p0, Liz6;->n:Lf07;

    .line 29
    new-instance p1, Liz6$d;

    invoke-direct {p1, p2}, Liz6$d;-><init>(Lf07;)V

    iput-object p1, p0, Liz6;->o:Lf07;

    const/4 p1, 0x0

    .line 30
    sput-boolean p1, Lp07;->a:Z

    return-void
.end method
