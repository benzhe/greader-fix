.class public final Lw85;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz85;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lz85;


# direct methods
.method public constructor <init>(ZZZLz85;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lw85;->a:Z

    iput-boolean p2, p0, Lw85;->b:Z

    iput-boolean p3, p0, Lw85;->c:Z

    iput-object p4, p0, Lw85;->d:Lz85;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lqa;La95;)Lqa;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lw85;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p3, La95;->d:I

    invoke-virtual {p2}, Lqa;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, La95;->d:I

    .line 3
    :cond_0
    invoke-static {p1}, Lc50;->n0(Landroid/view/View;)Z

    move-result v0

    .line 4
    iget-boolean v1, p0, Lw85;->b:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 5
    iget v1, p3, La95;->c:I

    invoke-virtual {p2}, Lqa;->c()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p3, La95;->c:I

    goto :goto_0

    .line 6
    :cond_1
    iget v1, p3, La95;->a:I

    invoke-virtual {p2}, Lqa;->c()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p3, La95;->a:I

    .line 7
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lw85;->c:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 8
    iget v0, p3, La95;->a:I

    invoke-virtual {p2}, Lqa;->d()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, La95;->a:I

    goto :goto_1

    .line 9
    :cond_3
    iget v0, p3, La95;->c:I

    invoke-virtual {p2}, Lqa;->d()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, La95;->c:I

    .line 10
    :cond_4
    :goto_1
    iget v0, p3, La95;->a:I

    iget v1, p3, La95;->b:I

    iget v2, p3, La95;->c:I

    iget v3, p3, La95;->d:I

    .line 11
    sget-object v4, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 13
    iget-object v0, p0, Lw85;->d:Lz85;

    if-eqz v0, :cond_5

    .line 14
    invoke-interface {v0, p1, p2, p3}, Lz85;->a(Landroid/view/View;Lqa;La95;)Lqa;

    move-result-object p2

    :cond_5
    return-object p2
.end method
