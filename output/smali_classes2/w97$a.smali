.class public final Lw97$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lxs7;

.field public final b:I

.field public c:I

.field public d:I

.field public e:Lo97;

.field public f:Z

.field public final synthetic g:Lw97;


# direct methods
.method public constructor <init>(Lw97;II)V
    .locals 0

    .line 8
    iput-object p1, p0, Lw97$a;->g:Lw97;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lw97$a;->f:Z

    .line 10
    iput p2, p0, Lw97$a;->b:I

    .line 11
    iput p3, p0, Lw97$a;->c:I

    .line 12
    new-instance p1, Lxs7;

    invoke-direct {p1}, Lxs7;-><init>()V

    iput-object p1, p0, Lw97$a;->a:Lxs7;

    return-void
.end method

.method public constructor <init>(Lw97;Lo97;I)V
    .locals 1

    .line 1
    iget v0, p2, Lo97;->l:I

    .line 2
    iput-object p1, p0, Lw97$a;->g:Lw97;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lw97$a;->f:Z

    .line 4
    iput v0, p0, Lw97$a;->b:I

    .line 5
    iput p3, p0, Lw97$a;->c:I

    .line 6
    new-instance p1, Lxs7;

    invoke-direct {p1}, Lxs7;-><init>()V

    iput-object p1, p0, Lw97$a;->a:Lxs7;

    .line 7
    iput-object p2, p0, Lw97$a;->e:Lo97;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    if-lez p1, :cond_1

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    .line 1
    iget v1, p0, Lw97$a;->c:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Window size overflow for stream: "

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lw97$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget v0, p0, Lw97$a;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lw97$a;->c:I

    return v0
.end method

.method public b()I
    .locals 3

    .line 1
    iget v0, p0, Lw97$a;->c:I

    iget-object v1, p0, Lw97$a;->a:Lxs7;

    .line 2
    iget-wide v1, v1, Lxs7;->f:J

    long-to-int v2, v1

    .line 3
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    iget v1, p0, Lw97$a;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget v0, p0, Lw97$a;->c:I

    iget-object v1, p0, Lw97$a;->g:Lw97;

    .line 2
    iget-object v1, v1, Lw97;->d:Lw97$a;

    .line 3
    iget v1, v1, Lw97$a;->c:I

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public d(Lxs7;IZ)V
    .locals 8

    .line 1
    :cond_0
    iget-object v0, p0, Lw97$a;->g:Lw97;

    .line 2
    iget-object v0, v0, Lw97;->b:Lma7;

    .line 3
    invoke-interface {v0}, Lma7;->maxDataLength()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lw97$a;->g:Lw97;

    .line 5
    iget-object v1, v1, Lw97;->d:Lw97$a;

    neg-int v2, v0

    .line 6
    invoke-virtual {v1, v2}, Lw97$a;->a(I)I

    .line 7
    invoke-virtual {p0, v2}, Lw97$a;->a(I)I

    .line 8
    :try_start_0
    iget-wide v1, p1, Lxs7;->f:J

    int-to-long v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v3

    if-nez v7, :cond_1

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lw97$a;->g:Lw97;

    .line 10
    iget-object v2, v2, Lw97;->b:Lma7;

    .line 11
    iget v3, p0, Lw97$a;->b:I

    invoke-interface {v2, v1, v3, p1, v0}, Lma7;->data(ZILxs7;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget-object v1, p0, Lw97$a;->e:Lo97;

    .line 13
    iget-object v1, v1, Lo97;->m:Lo97$b;

    .line 14
    iget-object v2, v1, Lh57$a;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 15
    :try_start_1
    iget-boolean v3, v1, Lh57$a;->i:Z

    const-string v4, "onStreamAllocated was not called, but it seems the stream is active"

    invoke-static {v3, v4}, Lc50;->G(ZLjava/lang/Object;)V

    .line 16
    iget v3, v1, Lh57$a;->h:I

    const v4, 0x8000

    if-ge v3, v4, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    sub-int/2addr v3, v0

    .line 17
    iput v3, v1, Lh57$a;->h:I

    if-ge v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    const/4 v5, 0x1

    .line 18
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_5

    .line 19
    invoke-virtual {v1}, Lh57$a;->c()V

    :cond_5
    sub-int/2addr p2, v0

    if-gtz p2, :cond_0

    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
