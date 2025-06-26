.class public abstract Lh57$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj57$i;
.implements Ld87$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh57;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public e:Lg67;

.field public final f:Ljava/lang/Object;

.field public final g:Lg97;

.field public h:I

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(ILa97;Lg97;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh57$a;->f:Ljava/lang/Object;

    const-string v0, "statsTraceCtx"

    .line 3
    invoke-static {p2, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transportTracer"

    .line 4
    invoke-static {p3, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lh57$a;->g:Lg97;

    .line 5
    new-instance v0, Ld87;

    sget-object v3, Lf37$b;->a:Lf37;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ld87;-><init>(Ld87$b;Ln37;ILa97;Lg97;)V

    iput-object v0, p0, Lh57$a;->e:Lg67;

    return-void
.end method


# virtual methods
.method public a(Lc97$a;)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Le57$c;

    .line 2
    iget-object v0, v0, Le57$c;->m:Lz57;

    .line 3
    invoke-interface {v0, p1}, Lc97;->a(Lc97$a;)V

    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lh57$a;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh57$a;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-boolean v2, p0, Lh57$a;->i:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lh57$a;->h:I

    const v3, 0x8000

    if-ge v2, v3, :cond_0

    iget-boolean v2, p0, Lh57$a;->j:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 5
    move-object v0, p0

    check-cast v0, Le57$c;

    .line 6
    iget-object v0, v0, Le57$c;->m:Lz57;

    .line 7
    invoke-interface {v0}, Lc97;->d()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    .line 9
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
