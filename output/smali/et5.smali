.class public final synthetic Let5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkx5;


# instance fields
.field public final a:Lft5;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lft5;Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Let5;->a:Lft5;

    iput-object p2, p0, Let5;->b:Ljava/util/Set;

    iput-object p3, p0, Let5;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Let5;->a:Lft5;

    iget-object v1, p0, Let5;->b:Ljava/util/Set;

    iget-object v2, p0, Let5;->c:Ljava/util/List;

    check-cast p1, Landroid/database/Cursor;

    const/4 v3, 0x0

    .line 1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 4
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lft5;->m(I[B)Lru5;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
