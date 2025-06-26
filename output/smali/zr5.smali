.class public final synthetic Lzr5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx5;


# instance fields
.field public final a:Lfs5;

.field public final b:I


# direct methods
.method public constructor <init>(Lfs5;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzr5;->a:Lfs5;

    iput p2, p0, Lzr5;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lzr5;->a:Lfs5;

    iget v1, p0, Lzr5;->b:I

    .line 1
    iget-object v2, v0, Lfs5;->b:Lss5;

    invoke-interface {v2, v1}, Lss5;->g(I)Lru5;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Attempt to reject nonexistent batch!"

    .line 2
    invoke-static {v3, v4, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v2, v0, Lfs5;->b:Lss5;

    invoke-interface {v2, v1}, Lss5;->h(Lru5;)V

    .line 4
    iget-object v2, v0, Lfs5;->b:Lss5;

    invoke-interface {v2}, Lss5;->a()V

    .line 5
    iget-object v0, v0, Lfs5;->d:Ltr5;

    invoke-virtual {v1}, Lru5;->b()Ljava/util/Set;

    move-result-object v1

    .line 6
    iget-object v2, v0, Ltr5;->a:Lzs5;

    invoke-interface {v2, v1}, Lzs5;->c(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ltr5;->e(Ljava/util/Map;)Ljn5;

    move-result-object v0

    return-object v0
.end method
