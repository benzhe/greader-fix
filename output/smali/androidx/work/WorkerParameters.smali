.class public final Landroidx/work/WorkerParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkerParameters$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Lsj;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroidx/work/WorkerParameters$a;

.field public e:I

.field public f:Ljava/util/concurrent/Executor;

.field public g:Lxm;

.field public h:Lek;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lsj;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;ILjava/util/concurrent/Executor;Lxm;Lek;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lsj;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/work/WorkerParameters$a;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Lxm;",
            "Lek;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 3
    iput-object p2, p0, Landroidx/work/WorkerParameters;->b:Lsj;

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/work/WorkerParameters;->c:Ljava/util/Set;

    .line 5
    iput-object p4, p0, Landroidx/work/WorkerParameters;->d:Landroidx/work/WorkerParameters$a;

    .line 6
    iput p5, p0, Landroidx/work/WorkerParameters;->e:I

    .line 7
    iput-object p6, p0, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/Executor;

    .line 8
    iput-object p7, p0, Landroidx/work/WorkerParameters;->g:Lxm;

    .line 9
    iput-object p8, p0, Landroidx/work/WorkerParameters;->h:Lek;

    return-void
.end method
