.class public Lrg1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lwh1;

.field public final b:Lxw0;


# direct methods
.method public constructor <init>(Lwh1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrg1;->a:Lwh1;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lrg1;->b:Lxw0;

    return-void
.end method

.method public constructor <init>(Lwh1;Lxw0;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lrg1;->a:Lwh1;

    .line 6
    iput-object p2, p0, Lrg1;->b:Lxw0;

    return-void
.end method


# virtual methods
.method public a(La91;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La91;",
            ")",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lca1;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lms0;->f:Lzv2;

    .line 2
    new-instance v1, Lsf1;

    invoke-direct {v1, p1, v0}, Lsf1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 3
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(La91;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La91;",
            ")",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lhf1;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lms0;->f:Lzv2;

    .line 2
    new-instance v1, Lsf1;

    invoke-direct {v1, p1, v0}, Lsf1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 3
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
